require 'rubygems'
require 'bundler/setup'
include Gem::UserInteraction
require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Movie.count} in the database"

#user_day_of_week = ui.ask("What day would you like to watch TV?")
at_least_one = false;

#Show.all.each do |show|
#	same_or_not = user_day_of_week.capitalize <=> show.day_of_week.capitalize
#	if same_or_not == 0
#		at_least_one = true;
#		puts show
#	end
#end

#if !at_least_one
#	puts "Sorry no show was found for that day"
#end

#Network.all.each do |network|
#	puts "Shows airing on #{network}"
#	network.shows.each do |show|
#		puts show
#	end	
#end

Movie.all.each do |movie|
	puts "#{movie.name}"
end

user_movie_name = ui.ask ("Which Movie do you want to expand?")
at_least_one = false;

Movie.all.each do |movie|
	same_or_not = user_movie_name.capitalize <=> movie.name.capitalize
	if same_or_not == 0
		puts "The movie #{movie.name} was released in #{movie.year_of_release}
		and had #{movie.leadActor} and #{movie.leadActress}."
		at_least_one = true
	end
end

if !at_least_one
	puts "wrong name..."
end
