class WatchlistSerializer
    include FastJsonapi::ObjectSerializer
    attributes :category_type, :movies
end