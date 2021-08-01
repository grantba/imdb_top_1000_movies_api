class CreateMovieWatchlists < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_watchlists do |t|
      t.integer :movie_id
      t.integer :watchlist_id

      t.timestamps
    end
  end
end
