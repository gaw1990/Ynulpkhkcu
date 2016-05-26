
def caesar_shift(plaintext, shift)

	text_array = plaintext.split(" ")

	text_array.map! do |word|
		word_to_numeric_array(word)
	end

	text_array.map! do |word|
		word.map!{|x| (((x + shift) % 26 ) + 97).chr}
		word.join("")
	end

	text_array.join(" ")
end

private
def word_to_numeric_array(word)
	word.chars.map{|x| (x.ord - 97) }
end


# This could be refactored using the '.tr' method into 1 or 2 lines.