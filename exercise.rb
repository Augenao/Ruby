puts "What is the source file?"
source_file = gets.chomp

#destination file
puts "Name destination file"
destination_file = gets.chomp

source_file_contents = IO.read(source_file)

IO.write(destination_file, source_file_contents)