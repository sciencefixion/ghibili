require 'faraday'

class GhibiliService
  def all_films
    get_json('films')
  end

  def all_people
    get_json('people')
  end

  def film(film_id)
    get_json("films/#{film_id}")
  end

  def get_json(path)
    url = "https://ghibliapi.herokuapp.com/#{path}"
    response = Faraday.get(url)
    JSON.parse(response.body)
  end
end
