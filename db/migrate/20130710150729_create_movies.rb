class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.integer :category_id
      t.integer :actor_id
      t.string :movie_image

      t.timestamps
    end
  end
end
