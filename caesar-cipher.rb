ALPHABET = "abcdefghijklmonpqrstuvwxyz".split("")

def caesar_cipher(message, num_offset)
  new_message_array = []
  # Convert original message to array and downcase
  string_array = message.downcase.split("")

  # Add characters from original_message_array into new_message_array
  string_array.each_with_index do |char, i|
    # Check if included in ALPHABET dictionary
    if !ALPHABET.include?(char)
      new_message_array << char
    else
      new_message_array << char
    end
  end

  # Convert new message to string
  new_message = new_message_array.join("")
  # Restor capitalization
  new_message.capitalize!
  p new_message + " It worked"
end

caesar_cipher("What a string!", 5)

############################################
# NEED TO GET THE CHAR OFFSET WORKING STILL
############################################