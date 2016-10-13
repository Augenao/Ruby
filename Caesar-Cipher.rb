#this is my version of caesar cipher.
#it will let you encrypt or decrypt


puts 'What do you want to do (encrypt/decrypt)?'
answer = gets.chomp

if answer == "encrypt"

	puts 'Ave Caesar'
	message = gets.chomp

		def shift_char(c, base, shift)
		  (((c.ord - base) + shift) % 26 + base).chr
		end

		def cipher(message, shift)
		  message.chars.map do |c|
		    case c
		    when 'a'..'z'
		      shift_char(c, 'a'.ord, shift)
		    when 'A'..'Z'
		      shift_char(c, 'A'.ord, shift)
		    else
		      c
		    end
		  end.join
		end

		solve_cipher = cipher(message, 3)
		puts solve_cipher  

elsif answer == "decrypt"

	puts 'Ave Caesar'
	message2 = gets.chomp

		def shift_char2(c, base, shift)
		  (((c.ord - base) + shift) % 26 + base).chr
		end

		def cipher2(message2, shift)
		  message2.chars.map do |c|
		    case c
		    when 'a'..'z'
		      shift_char2(c, 'a'.ord, shift)
		    when 'A'..'Z'
		      shift_char2(c, 'A'.ord, shift)
		    else
		      c
		    end
		  end.join
		end

		solve_cipher2 = cipher2(message2, -3)
		puts solve_cipher2   
else

	puts 'Do not mess with me'

end

