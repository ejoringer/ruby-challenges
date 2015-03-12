puts "Are you good? Please answer Y/N:"
answer = gets.chomp.downcase

while (answer == "y")
	puts "I love you"
end
	
if (answer == "n")
	puts "I still love you."
end