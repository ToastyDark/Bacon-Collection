import java.io.File;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Comparator;

public class Main {

	public static final double SECONDS_PER_TICK 	= 1d/20d;
	public static final int 	UNITS_PER_BEAT 		= 192/4;
	public static final int 	UNITS_PER_32ND 		= 192/(4*8);
	public static final int MAX_LINES_PER_FUNCTION 	= 50;
	
	static int unique_number = 0;
	static int uniqueNumber() { return unique_number++; }
	
	public static void main(String[] args) throws IOException, ParseException {
		
		print_possible_BPMs();
		
		File root_directory = new File(System.getProperty("user.dir")).getParentFile(); // The 'museq' directory, above 'source'
		
		// Only go up a directory if you're in the data pack
		// (only added because it's annoying to have to go to my main GitHub directory to find the data folder and check if it works)
		if (!root_directory.getPath().contains("museq")) {
			root_directory = new File(System.getProperty("user.dir"));
		}
		
		// ... //
		String song_list = "# Generated File \n\n";
		String trigger_load = "# Generated File \n\n";
		String trigger_tick = "# Generated File \n\n";
		String song_tick = "# Generated File \n\n";
		String song_clear = "# Generated File \n\n";

		// ... //
		
		String data_path = root_directory.getPath() + "/data\\museq\\function\\";
		
		if (new File(data_path + "songs\\").exists()) deleteDirectory(data_path + "songs\\");
		
		File songs = new File("songs/");
		for (File song : songs.listFiles()) {
			if (song.getName().endsWith("z")) {
				System.out.println("Can't export a compressed project. Try saving as .mmp.");
				continue;
			}
			
			String song_name = song.getName();
			
			// Save the song to 
			unique_number = 0;
			export(song.getPath(), data_path + "songs\\", "museq:songs/", song_name);
			
			// Song list
			song_list += tellraw(song_name, "gold", "/trigger mq."+song_name);
		
			// Trigger
			String scoreboard_name = "mq." + song_name;
			trigger_load += "scoreboard objectives add " + scoreboard_name + " trigger" + "\n";
			trigger_tick += trigger(song_name, scoreboard_name, "function museq:meta/stopall", "tag @s add museq." + song_name);
			
			// Song tick
			song_tick += "# " + song_name + "\n";
			song_tick += "execute as @a[tag=museq."+song_name+"] at @s run function museq:songs/" + song_name + "\n\n";
			
			// Clear songs
			song_clear += "# " + song_name + "\n";
			song_clear += "tag @s remove museq." + song_name + "\n\n";
			
		}
		
		// Stop all
		song_list 	 += tellraw("[Stop All]", "red", "/trigger mq.stopall");	   			// Add to song list
		trigger_load += "scoreboard objectives add mq.stopall trigger" + "\n"; 				// Trigger // on load
		trigger_tick += trigger("[Stop All]", "mq.stopall", "function museq:meta/stopall"); // Trigger // on tick
		
		// Save functions //
		saveFunction(data_path + "meta\\songlist.mcfunction", song_list);			// Song list
		saveFunction(data_path + "trigger\\trigger_load.mcfunction", trigger_load);	// Triggers
		saveFunction(data_path + "trigger\\trigger_tick.mcfunction", trigger_tick); // Triggers
		saveFunction(data_path + "songs\\_tick.mcfunction", song_tick);				// Song tick
		saveFunction(data_path + "meta\\stopall.mcfunction", song_clear);			// Song clear
	
	}

	/** Exports an LMMs project to a function. */
	public static void export(String filename_in, String export_directory, String namespace, String function_name) throws ParseException, IOException {
		
		System.out.println("Exporting Project: " + filename_in + "\n");
		ArrayList<IntStringPair> function = new ArrayList<IntStringPair>(); // int -- tick the command runs on, string -- command
		int length = 0;
		
		XMLTag lmms_project = XMLTag.parse(new ActualStringBuffer(Files.readString(Paths.get(filename_in))));
				
		// Get BPM
		int bpm = 150;
		for (XMLTag head 			: lmms_project.tag("head")) bpm = Integer.parseInt(head.attribute("bpm"));
		
		// Round BPM
		if (bpm != 150 && bpm != 75 && bpm != 50) {
			System.out.println("WARNING! " + bpm + " is not a safe bpm!!");
			
			if (Files.exists(Paths.get("allow_bad_bpms.txt"))) {	
				 System.out.println("[Discovered 'allow_bad_bpms.txt', ignoring issue]\n");
			} else {
				 if (bpm > 100) 				{ bpm = 150; }
				 if (bpm > 60 && bpm <= 100) 	{ bpm =  75; }
				 if (bpm > 0  && bpm <=  60) 	{ bpm =  50; }
				 System.out.println("I'll be nice and round it to "+bpm+" for you, but be careful next time!\n");
			}
		}
		
		// Convert BPM to ticks per 32nd
		double beats_per_second  = (bpm / 60d);
		double _32nds_per_second = beats_per_second * 8;
		double ticks_per_32nd 	 = 20d / _32nds_per_second;
		
							      String grammar = "are", plural = "s";
		if ((int) ticks_per_32nd == 1) { grammar = "is";  plural = "" ; }
		System.out.println("BPM is " + bpm + ", so there "+grammar+" " + ticks_per_32nd + " tick"+plural+" per 32nd note.");
		
		
		// Actually export song
		for (XMLTag song 			: lmms_project.tag("song"))
		for (XMLTag trackcontainer 	: song.tag("trackcontainer"))
		for (XMLTag track 			: trackcontainer.tag("track"))
		for (XMLTag instrumenttrack	: track.tag("instrumenttrack"))
		for (XMLTag instrument 		: instrumenttrack.tag("instrument"))
		{
			String sound = instrument.tag("audiofileprocessor").get(0).attribute("src");
			
			for (XMLTag pattern	: track.tag("pattern")) {
				int offset = Integer.parseInt(pattern.attribute("pos"));
				
				for (XMLTag note	: pattern.tag("note")) {
					int   time 	 = Integer.parseInt(note.attribute("pos")) + offset;
					float volume = Integer.parseInt(note.attribute("vol")) / (float) 100;
					int   key 	 = Integer.parseInt(note.attribute("key"));
					
					double time_32nds = time / UNITS_PER_32ND;
					double tick = time_32nds * ticks_per_32nd;
					
					// Calculate end of song tick
					double newlen = time + Integer.parseInt(note.attribute("len"));
						   newlen /= UNITS_PER_32ND;  // To 32nds
						   newlen *= ticks_per_32nd;  // To ticks
					if (length < newlen) length = (int) newlen;
					
					//System.out.println(sound + " at " + time + ", time32: " + time_32nds + ", tick: " + tick + ", vol: " + volume + ", note: " + key);
					
					double frequency 		= noteToFreq(key); 				// LMMS Note frequency
					double frequency_center = noteToFreq(54);  				// Center note for note blocks is 54 (why)
					double pitch 			= (frequency/frequency_center); // Pitch multiplier for playsound
					
					pitch = clamp(pitch, 0.5, 2, "Pitch");

					String instrument_name = sound.substring(sound.lastIndexOf('/')+1).replaceAll(".ogg", ""); //"pling";
					
					if (instrument_name.equals("xylobone")) instrument_name = "xylophone";
					if (instrument_name.equals("bd")) 		instrument_name = "basedrum";
					
					int int_tick = (int) Math.round(tick);

					String cmd = "playsound minecraft:block.note_block." + instrument_name + " record @s ~ ~ ~ " + round(volume) + " " + round(pitch);
					String condition = "execute if score @s museq.tick matches " + int_tick + " run ";
					
					function.add(new IntStringPair(int_tick, int_tick, condition + cmd));
					
				}
			}
		}
		
		sort(function);
						
		// Split the function into sub-functions. 
		ArrayList<Main.IntStringPair> ret_function = splitSave(function, export_directory + "/_"+function_name+"/", namespace + "_"+function_name+"/", function_name);
		String str_function = toString(ret_function);
		
		// Loop
		str_function += "execute if score @s museq.tick matches " + length + ".. run scoreboard players set @s museq.tick 0" + "\n"; 

		// Add the increment counter
		str_function += "scoreboard players add @s museq.tick 1" + "\n"; 
		
		String filename_out = export_directory + function_name + ".mcfunction";
		saveFunction(filename_out, str_function);
	}

	private static ArrayList<IntStringPair> splitSave(ArrayList<IntStringPair> function, String dir, String namespace, String function_name) throws IOException {
		
		ArrayList<IntStringPair> final_function = new ArrayList<IntStringPair>();
		
		// Split the function into <max>-line chunks, save them, then call them in a new function, the 'final_function' variable
		int i = 0;
		while (i < function.size()) {
			
			int start = function.get(i).start;
			int end = function.get(i).end;
			
			// Make a function consisting of <max> lines or less of the original function, 
			String save_function = "";
			for (int j = 0; j < MAX_LINES_PER_FUNCTION && i < function.size(); j++) {
				save_function += function.get(i).str + "\n";				
				if (start > function.get(i).start) start = function.get(i).start;
				if (end   < function.get(i).  end) end   = function.get(i).  end;
				i++;
			}
			
			// Save to disk
			String append_name = "_"+ uniqueNumber();
			saveFunction(dir + function_name + append_name + ".mcfunction", save_function);
			
			// Call it in final_function
			String func = namespace + function_name + append_name;
			String cmd = "execute if score @s museq.tick matches " + start + ".." + end + " run function " + func;
			final_function.add(new IntStringPair(start, end, cmd));
			
		}
		
		// Recursively split
		if (final_function.size() > MAX_LINES_PER_FUNCTION) {
			final_function = splitSave(final_function, dir, namespace, function_name + "_split_" + + uniqueNumber());
		}
		
		return final_function;
	}
	
	public static String toString(ArrayList<IntStringPair> list) {
		
		// Convert final function to string
		String return_function = "";
		for (IntStringPair pair : list) {
			return_function += pair.str +"\n";
		}
		return return_function;
		
	}

	public static void print_possible_BPMs() {
		System.out.println("");
		System.out.println("Available BPMS (within reason)");
		
		System.out.println("-- The following calculations assume the minimum unit of time you will use is a 32nd note");
		System.out.println("-- AKA 1/32 of a bar | AKA 1/8 of a beat");
		
		System.out.println("-- Also, one tick takes " + SECONDS_PER_TICK + " seconds at 20TPS");
		System.out.println("");
		
		for (int ticks_per_32nd = 0; ticks_per_32nd < 4; ticks_per_32nd++) {
			System.out.println("At " + ticks_per_32nd + " ticks per 32nd, ");
			
			double seconds_per_beat = ((SECONDS_PER_TICK*ticks_per_32nd)*8);
			System.out.println(" > A beat would take " + round(seconds_per_beat) + " seconds.");
			System.out.println(" > A bar would take " + round(seconds_per_beat*4) + " seconds.");
			
			double beats_per_second = 1 / seconds_per_beat;
			double bpm = beats_per_second * 60;
			
			if (bpm != Double.POSITIVE_INFINITY) bpm = Math.round(bpm);
			
			System.out.println(" > The BPM would be " + bpm + ".");

		}
		
		System.out.println("");

	}
	
	/* -- Short/Utility methods -- */
	
	/** Creates the commands to run a list of commands when a given scoreboard is triggered. */
	public static String trigger(String comment, String scoreboard, String... commands) {
		String trigger_enable = "scoreboard players enable @s " + scoreboard + "\n";
		String trigger_run    = "";
		for (String cmd : commands) {
		 	   trigger_run   += "execute if entity @s[scores={"+scoreboard+"=1..}] run " + cmd + "\n";
		}
		String trigger_reset  = "execute if entity @s[scores={"+scoreboard+"=1..}] run scoreboard players reset @s " + scoreboard + "\n";
		return "# " + comment + "\n" + trigger_enable + trigger_run + trigger_reset + "\n";
	}

	/** Creates a tellraw command with a string, color, and onClick command. */
	public static String tellraw(String text, String color, String command) {
		return "tellraw @s {\"text\":\""+text+"\",\"color\":\""+color+"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\""+command+"\"}}\n";
	}
	
	/** Saves a string to disk. */
	public static void saveFunction(String filename, String function) throws IOException {
		Paths.get(filename).toFile().getParentFile().mkdirs();
		Files.writeString(Paths.get(filename), function);
	}
	
	static double round(double d) {
	  return Double.valueOf(new DecimalFormat("#.###").format(d));
	}
	
	// https://gist.github.com/YuxiUx/ef84328d95b10d0fcbf537de77b936cd
	static double noteToFreq(int note) {
	    float a = 440; //frequency of A (coomon value is 440Hz)
	    return (a / 32) * Math.pow(2, ((note - 9) / 12.0));
	}
	
	private static double clamp(double pitch, double low, double high, String name) {
		double new_pitch = pitch;
		if (pitch < low)  { new_pitch = low; }
		if (pitch > high) { new_pitch = high; }
		if (new_pitch != pitch) System.out.println(name + " out of range: " + pitch);
		return new_pitch;
	}
	
	// https://stackoverflow.com/questions/779519/delete-directories-recursively-in-java/27917071#27917071
	private static void deleteDirectory(String dir) throws IOException {
		Files.walkFileTree(Paths.get(dir), new SimpleFileVisitor<Path>() {
			   @Override
			   public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
			       Files.delete(file);
			       return FileVisitResult.CONTINUE;
			   }

			   @Override
			   public FileVisitResult postVisitDirectory(Path dir, IOException exc) throws IOException {
			       Files.delete(dir);
			       return FileVisitResult.CONTINUE;
			   }
			});
	}
	
	private static void sort(ArrayList<Main.IntStringPair> function) {
		function.sort(new FunctionComparator());
	}
	public static class FunctionComparator implements Comparator<IntStringPair> {@Override
		public int compare(Main.IntStringPair o1, Main.IntStringPair o2) {
			return Integer.compare(o1.start, o2.start);
		}
	}
	
	public record IntStringPair(int start, int end, String str) { }

}
