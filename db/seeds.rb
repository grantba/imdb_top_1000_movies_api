# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# urls = ["https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&ref_=adv_prv", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=51&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=101&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=151&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=201&ref_=adv_nxt", 
# "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=251&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=301&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=351&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=401&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=451&ref_=adv_nxt", 
# "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=501&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=551&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=601&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=651&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=701&ref_=adv_nxt",
#  "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=751&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=801&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=851&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=901&ref_=adv_nxt", "https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&start=951&ref_=adv_nxt"]
# urls.each do |url|
#    WebScrapper.parse!(:parse, url: url)
#    WebScrapper.crawl!
# end

# Movie.all.each do |movie|
#     Api.get_movie_by_id(movie.imdbID)
# end