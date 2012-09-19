require 'date'
	puts "Good morning and what's your name?"
	name = gets.chomp
	
	today = Date.today.strftime("%A")
	day_of_year = Date.today.yday.to_s
	
	if day_of_year[0] == "1" && day_of_year.length == 2 
		ordinal = "th"
	elsif day_of_year[-1] == "1"
		ordinal = "st"
	elsif day_of_year[-1] == "2"
		ordinal = "nd"
	elsif day_of_year[-1] == "3"
		ordinal = "rd"
	else
		ordinal = "th"
	
	end
	
	puts "Happy #{today} #{name}! It is the #{day_of_year}#{ordinal} day of the year." 
	puts "Would you like me to make you breakfast?"
	answer = gets.chomp

class GoodMorning

	def initialize
		@kind_of_toast = "wheat"
		@number_of_eggs = 2
		@milkshake_flavor = "chocolate"
	end

	def make_toast
		puts "What kind of toast do you want?"
		@kind_of_toast = gets.chomp
		puts "OK, I will make you some nice #{@kind_of_toast} toast"
		self
	end

	def make_eggs
		puts "How many eggs would you like this morning?"
		@number_of_eggs = gets.chomp
		puts "#{@number_of_eggs} eggs on the way!"
		self
	end

	def make_milkshake
		puts "What flavor milkshake would you like?"
		@milkshake_flavor = gets.chomp
		puts "A #{@milkshake_flavor} milkshake is coming right up, FATTY!"
		self
	end
end

if answer.downcase == "yes"
	puts "Great"
else
	puts "That's too bad. See Ya!"
	exit
end

morning_conversation = GoodMorning.new
puts morning_conversation.make_toast.make_eggs.make_milkshake

