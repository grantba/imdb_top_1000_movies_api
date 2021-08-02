# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# urls = ["https://www.imdb.com/search/title/?groups=top_1000&sort=alpha", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=51", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=101", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=151", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=201", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=251", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=301", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=351", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=401", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=451", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=501", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=551", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=601", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=651", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=701", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=751", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=801", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=851", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=901", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=951"]
# urls.each do |url|
#    WebScrapper.parse!(:parse, url: url)
#    WebScrapper.crawl!
# end

# Movie.all.each do |movie|
#     Api.get_movie_by_id(movie.imdbID)
# end