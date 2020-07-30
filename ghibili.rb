# Use the studio Ghibili api
# Find info on each film
# For each film, print out its name, director, producer, rotten tomatoes score
require 'json'
require 'pry'
require './film'
require './ghibili_service'

film_data = GhibiliService.new.all_films

films = film_data.map do |film_attributes|
  Film.new(film_attributes)
end

films.each do |film|
  puts film.title
  puts "Directed by: #{film.director}"
  puts "Produced by: #{film.producer}"
  puts "Rotten Tomatoes Score: #{film.rotten_tomatoes}"
  puts "__________________________________________"
end
