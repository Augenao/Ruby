#we will work with the next sentence
puts "Write a sentence"
example_sentence = gets.chomp


#Sorts it alphabetically, ignoring case and non alphanumeric.
def word_sorting(sentence)
	puts "#{sentence}".split.sort_by { |x| x.downcase }.join(' ').gsub(/[^0-9a-z ]/i, '')
end

word_sorting(example_sentence)



