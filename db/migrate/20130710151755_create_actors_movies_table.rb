class CreateActorsMoviesTable < ActiveRecord::Migration
  def change
    create_table :actors_movies, id: false do |t|
      t.references :actors
      t.references :movies
    end
  end
end