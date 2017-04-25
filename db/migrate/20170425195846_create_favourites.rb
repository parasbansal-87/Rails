class CreateFavourites < ActiveRecord::Migration[5.0]
  def change
    create_table :favourites do |t|
      t.integer :user_id, null: false
      t.integer :movie_id, null: false
      t.timestamps
    end
  end
end
