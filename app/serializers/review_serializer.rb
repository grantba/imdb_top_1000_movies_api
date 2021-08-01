class ReviewSerializer
    include FastJsonapi::ObjectSerializer
    attributes :rating, :description, :movie
end