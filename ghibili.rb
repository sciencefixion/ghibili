# Use the studio Ghibili api
# Find info on each film
# For each film, print out its name, director, producer, rotten tomatoes score
require 'json'
require 'pry'
require './film'
require './person'
require './ghibili_service'
#
# film_data = GhibiliService.new.all_films
#
# films = film_data.map do |film_attributes|
#   Film.new(film_attributes)
# end
#
# films.each do |film|
#   puts film.title
#   puts "Directed by: #{film.director}"
#   puts "Produced by: #{film.producer}"
#   puts "Rotten Tomatoes Score: #{film.rotten_tomatoes}"
#   puts "__________________________________________"
# end

people_data = GhibiliService.new.all_people

people = people_data.map do |person_attributes|
  Person.new(person_attributes)
end

people.each do |person|
  puts person.name
  puts "Films:"
  person.films.each do |film|
    puts film.title
  end
  puts "========================"
end
