class MovieSerializer
    include FastJsonapi::ObjectSerializer
    attributes :Title, :Year, :Rated, :Released, :Runtime, :Genre, :Director, :Writer, :Actors, :Plot, :Awards, :Poster, :Ratings, :imdbRating, :imdbID, :BoxOffice, :Production, :reviews
end