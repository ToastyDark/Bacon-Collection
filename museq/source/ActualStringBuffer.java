import java.text.ParseException;

public class ActualStringBuffer {

	String string = "";
	int index = 0;
	
	public ActualStringBuffer(String string) {
		this.string = string;
	}
	
	public String readUntil(char[] chars) throws ParseException {
		return readUntil(chars, new char[0]);
	}
	
	/**
	 * Read until one of the given characters is reached, but throw an error if one of the given err characters is reached first.
	 * All unescaped characters are ignored when parsing.
	 * <br><br>
	 * Once this method finishes, the index will be on the detected character.
	 * So, if you say to readUntil you find a quote, when the function is done running, currentChar() will be the quote.
	 * 
	 * 
	 * @param chars
	 * @param err
	 * @return The accumulated string (not including the end character)
	 * @throws ParseException 
	 */
	public String readUntil(char[] chars, char[] err) throws ParseException {
		String builder = "";
		
		boolean escape = false;
		builder: while (index < string.length()) {
			char c = readCharReal();
				
			// If this isn't after an escape character,
			if (!escape) {
					
				// Check for error characters
				for (char i : err) {
					if (c == i) throw new ParseException("ActualStringBuilder: Found an unexpected character", index);
				}
				
				// Check for ending characters
				for (char i : chars) {
					if (c == i) break builder;
				}
			
			} else escape = false;
			
			if (c == '\\') escape = true;
			
			builder += c;
			
		}
		index--;

		skipWhitespace();
		return builder;
	}
	
	/**
	 * Get the current character without advancing the buffer
	 * @return
	 */
	public char currentChar() { 
		skipWhitespace(); 
		return string.charAt(index); }
	
	public char currentCharReal() { return string.charAt(index); }

	
	public char readChar() { 
		skipWhitespace(); 
		index++; return string.charAt(index-1); }
	
	public char readCharReal() { 
		index++; return string.charAt(index-1); }

	public void skipWhitespace() {	
		//System.out.println(currentChar() + ":" + Character.isWhitespace(currentChar()));
		if (!Character.isWhitespace(currentCharReal())) return;
		builder: while (index < string.length()) {
			char c = currentCharReal();	
			//Log.send(c + ":"+index);
			if (!Character.isWhitespace(c)) break builder;	
			index++;
		}
	}

	public void back() {
		index--;
	}

	public int index() {
		return index;
	}

	/**
	 * Get the surrounding context to the current index
	 * @return
	 * @throws ParseException 
	 */
	public String surrounding() throws ParseException {
		int start_index = index;
		while (currentCharReal() != '\n' && index > 0) {
			index--;
		}
		index++;
		String line = readUntil(new char[] { '\n' }, new char[0]);
		int relative_index = index - start_index;
		
		index = start_index;
		String arrow = "";
		for (int a = 0; a <= relative_index; a++) { arrow += " "; }
		arrow += "v HERE";
		
		return arrow + "\n" + line;
	}
	
	public boolean eof() {
		return index >= string.length();
	}
}
