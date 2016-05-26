def bucks
puts "Who\'s the coolest/best employee at the North Center Starbucks?"
name = gets.chomp

if name == "larissa"
	puts "--------"
	puts "Fucking right. As far as this computer is concerned, there are no other baristas."
	puts "--------"
elsif name == "cate"
	puts "--------"
	puts "Cate.. aka the nicest person on earth!!! She rocks. You rock!"
	puts "--------"
elsif name == "erin" || name == "Erin"
	puts "--------"
	puts "The greatest starbucks employee on the PLANET!!! Drinking her lattes has led to enlightenment and spontaneous combustion!!"
	puts "--------"
elsif name == "brandon"
	puts "--------"
	puts "is that supposed to be funny? Try again."
	puts "--------"
	bucks
elsif name == "kelly"
	puts "--------"
	puts "Coffee Master Kelly!! None are more gifted! She will make your mind explode with nothing but steam, beans and milk"
	puts "--------"
else
	puts "--------"
	puts "Try the name of a NC Bucks employee for an answer"
	puts "--------"
	bucks
end
end

bucks