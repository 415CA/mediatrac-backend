class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :tmdb_id, unique: true
      t.string :original_title
      t.string :overview
      t.string :poster_path
      t.string :release_date
      t.string :runtime
      t.string :tagline
      t.string :genre

      t.timestamps
    end
  end
end
