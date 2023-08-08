ALPHABET = ('a'..'z').to_a

def caesar_cipher(message, shift_factor)
  new_message = []
  message_array = message.downcase.split("")

  # Add chars from message_array into new_message; shift char if applicable
  message_array.each do |char|
    # Check if char is included in ALPHABET dictionary
    if !ALPHABET.include?(char)
      new_message << char
    else
      # Char was in ALPHABET, so shift char by the factor
      new_message << ALPHABET[(ALPHABET.index(char) + shift_factor) % 26]
    end
  end

  # Convert new_message array into string, restore capitalization
  new_message = new_message.join("").capitalize
  puts new_message
end

caesar_cipher("What a string!", 5)