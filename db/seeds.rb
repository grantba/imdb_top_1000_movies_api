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

# movies = Movie.all
# movies.each do |movie|
#     Api.get_movie_by_id(movie.imdbID)
# end

# Review.create(rating: 5, description: "Great Movie!", movie_id: 51) 
# Review.create(rating: 5, description: "One of the best movies of all time.", movie_id: 787)
# Review.create(rating: 5, description: "I could watch this movie again and again.", movie_id: 861)
# Review.create(rating: 3, description: "Hilarious.", movie_id: 574)
# Review.create(rating: 5, description: "Love This Movie.", movie_id: 764)
# Review.create(rating: 2, description: "Not So Great Movie.", movie_id: 232)
# Review.create(rating: 4, description: "Good Movie.", movie_id: 98)
# Review.create(rating: 1, description: "No Good.", movie_id: 270)
# Review.create(rating: 5, description: "Great Movie.", movie_id: 354)
# Review.create(rating: 5, description: "Great Movie.", movie_id: 430)
# Review.create(rating: 5, description: "This is a great movie. I love this director.", movie_id: 793)

# Watchlist.create(category_type: "Favorites")
# Watchlist.create(category_type: "Need to Watch")
# Watchlist.create(category_type: "Comedy")
# Watchlist.create(category_type: "Classics")
# Watchlist.create(category_type: "Horror")
# Watchlist.create(category_type: "Never watch again")
# Watchlist.create(category_type: "Family")

# MovieWatchlist.create(movie_id: 51, watchlist_id: 1)
# MovieWatchlist.create(movie_id: 98, watchlist_id: 1)
# MovieWatchlist.create(movie_id: 430, watchlist_id: 1)
# MovieWatchlist.create(movie_id: 764, watchlist_id: 4)
# MovieWatchlist.create(movie_id: 574, watchlist_id: 3)
# MovieWatchlist.create(movie_id: 787, watchlist_id: 4)
# MovieWatchlist.create(movie_id: 861, watchlist_id: 4)
# MovieWatchlist.create(movie_id: 232, watchlist_id: 6)
# MovieWatchlist.create(movie_id: 270, watchlist_id: 6)
# MovieWatchlist.create(movie_id: 354, watchlist_id: 7)
# MovieWatchlist.create(movie_id: 118, watchlist_id: 2)
# MovieWatchlist.create(movie_id: 793, watchlist_id: 1)
