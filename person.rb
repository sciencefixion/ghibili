class Person
  attr_reader :name,
              :films

  def initialize(attributes)
    @name = attributes["name"]
    film_urls = attributes["films"]
    film_ids = film_urls.map do |film_url|
      film_url.gsub("https://ghibliapi.herokuapp.com/films/", '')
    end
    @films = film_ids.map do |film_id|
      attributes = GhibiliService.new.film(film_id)
      Film.new(attributes)
    end
  end
end
