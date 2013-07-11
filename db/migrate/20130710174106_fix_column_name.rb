class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :actors_movies, :actors_id, :actor_id
    rename_column :actors_movies, :movies_id, :movie_id
  end
end
