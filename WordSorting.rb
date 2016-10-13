puts "Write a sentence"
first_sentence = gets.chomp
#in case you want more sentences
#puts "Another one"
#second_sentence = gets.chomp


def word_sorting(sentence)
	puts "#{sentence}".split.sort_by { |x| x.downcase }.join(' ').gsub(/[^0-9a-z ]/i, '')
end

word_sorting(first_sentence)
#word_sorting(second_sentence)


