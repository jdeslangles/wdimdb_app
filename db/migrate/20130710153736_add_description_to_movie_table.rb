class AddDescriptionToMovieTable < ActiveRecord::Migration
  def change
    add_column :movies, :description, :text
  end
end
