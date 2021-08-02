# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_01_233457) do

  create_table "movie_watchlists", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "watchlist_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "Title"
    t.string "Year"
    t.string "Rated"
    t.string "Released"
    t.string "Runtime"
    t.string "Genre"
    t.string "Director"
    t.text "Writer"
    t.text "Actors"
    t.text "Plot"
    t.text "Awards"
    t.string "Poster"
    t.string "Ratings"
    t.string "imdbRating"
    t.string "imdbID"
    t.string "BoxOffice"
    t.string "Production"
    t.boolean "Response"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "description"
    t.integer "movie_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watchlists", force: :cascade do |t|
    t.string "category_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
