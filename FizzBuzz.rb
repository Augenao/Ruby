#from 1
i = 1
#to 100
while i <= 100
#la chicha
	if i % 3 == 0 && i % 5 != 0
		puts "Fizz"
	elsif i % 5 == 0 && i % 3 != 0
		puts "Buzz"
	elsif i % 3 == 0 && i % 5 == 0
		puts "FizzBuzz"
	else
		puts i
	end
#adds 1
i = i +1
#finiquit	
end