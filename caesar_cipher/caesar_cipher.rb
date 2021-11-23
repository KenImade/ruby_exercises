# require 'pry-byebug'

def caesar_cipher (string, step)
    encrypted_word_array = []
    ascii_array = []
    string.each_char {|char| ascii_array.push(char.ord)}
    # binding.pry
    # ascii_array
    for ascii_code in ascii_array do
        checker = ascii_code + step
        if ascii_code.between?(65,90) && (checker < 90)
            encrypted_letter = checker
            encrypted_word_array.push(encrypted_letter.chr)
        elsif ascii_code.between?(97,122) && (checker < 122)
            encrypted_letter = checker
            encrypted_word_array.push(encrypted_letter.chr)
        elsif ascii_code < 64 
            encrypted_word_array.push(ascii_code.chr)
        elsif (checker > 90) && ascii_code.between?(65,90)
            encrypted_word_array.push((65+(checker-91)).chr)
        elsif (checker) > 122 && ascii_code.between?(97,122)
            encrypted_word_array.push((97+(checker-123)).chr)
        end
    end
    encrypted_word = encrypted_word_array.join
    # encrypted_word_array
end

caesar_cipher("What a string!", 5)
