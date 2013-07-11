class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.text :bio
      t.string :actor_image
      t.integer :movie_id

      t.timestamps
    end
  end
end
