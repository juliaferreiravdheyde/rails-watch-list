require "open-uri"
require "json"
url = "http://tmdb.lewagon.com/movie/top_rated"
movies = JSON.parse(URI.open(url).read)["results"]

10.times do |i|
  movies.each do |movie|
    Movie.create(
      title: movie["original_title"],
      overview: movie["overview"],
      poster_url: movie["poster_path"],
      rating: movie["vote_averege"]
    )
  end
end
