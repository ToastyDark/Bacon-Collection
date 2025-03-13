import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;

public class XMLTag {
	
	// Example: '<lmms-project creatorversion="1.2.2" creator="LMMS" type="song" version="1.0">'
	String type; 													// EX: 'lmms-project'
	HashMap<String, String> attributes = new HashMap<String, String>(); // EX: creator=LMMS, type=song
	
	ArrayList<XMLTag> sub_tags = new ArrayList<XMLTag>();
	
	public XMLTag(String type) {
		this.type = type;
	}

	public ArrayList<XMLTag> tag(String type) {
		ArrayList<XMLTag> tags = new ArrayList<XMLTag>();
		for (XMLTag tag : sub_tags) {
			if (tag.type.equals(type)) {
				tags.add(tag);
			}
		}
		//if (tags.size() == 0) throw new IndexOutOfBoundsException("No element of type '" + type + "' is contained in " + this.type);
		return tags;
	}
	
	public XMLTag tag(int index) {
		return sub_tags.get(index);
	}
	
	public String attribute(String attribute) {
		return attributes.get(attribute);
	}

	public static XMLTag parse(ActualStringBuffer input) throws ParseException {
		
		XMLTag root = new XMLTag("Empty or Unknown Tag -- Error during parsing");

		input.skipWhitespace();
		if (input.eof()) { return root; }

		char first = input.readChar();

		// Reading the start of a tag
		if (first == '<') {
			
			String tag_contents = input.readUntil(new char[] {'>'});
			
			// Metadata, I don't feel like implementing parsing it right now, so just skip over it.
			if (tag_contents.startsWith("?") || tag_contents.startsWith("!")) {
				
				// Re-parse, starting later in the file
				input.readChar();
				return XMLTag.parse(input);
				
			}
			
			// Tag has no sub-tags
			boolean is_empty = false;
			if (tag_contents.endsWith("/")) {
				is_empty = true;
				tag_contents = tag_contents.substring(0, tag_contents.length()-1);
			}
			// Tag is an end tag
			if (tag_contents.startsWith("/")) {
				is_empty = true;
				root.type = tag_contents;
				return root;
			}
			tag_contents = tag_contents.trim();
			
			// Actually read tag info
			ActualStringBuffer tag_buffer = new ActualStringBuffer(tag_contents);

			// Type
			root.type = tag_buffer.readUntil(new char[] {' '});

			// Attributes
			if(tag_contents.contains(" "))
			while (!tag_buffer.eof()) {
				
				tag_buffer.skipWhitespace();
				
				// Read attribute name
				String name = tag_buffer.readUntil(new char[] {'='});

				// Skip "="
				tag_buffer.readChar();

				// Read value
				char start = tag_buffer.readChar();
				String value = "";
				
				// Assuming the value starts with a double quote or single quote, this should work just fine,
				// And it saves some duplicated code sooo
				value = tag_buffer.readUntil(new char[] {start});
				
				root.attributes.put(name, value);
				
				// Skip ending quote
				tag_buffer.readChar();

			}
			
			// Sub-tags
			if (!is_empty) {
				boolean found_end_tag = false;
				String end_tag_type = "/"+root.type;
				
				// Loop through sub tags
				while (!found_end_tag) {
					
					if (input.eof()) 					{ found_end_tag = true; continue; }
					
					input.readChar(); 					//  Move to next tag// Skip the ending '>'
					
					XMLTag tag = XMLTag.parse(input); 
					
					if (tag.type.equals(end_tag_type)) 	{ found_end_tag = true; continue; }
					
					root.sub_tags.add(tag);
				}
				
			}
			
		}
		
		return root;
	}

	
	public String toString(String depth) {
		
		String str = "\n" + depth;
		str += type + ": \n";
		
		for (String k : attributes.keySet()) str += depth + " " + k + "=" + attributes.get(k);
		for (XMLTag e : sub_tags) str += e.toString(depth + "   ");
		
		return str;
		
	}
	
}
