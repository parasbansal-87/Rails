class ChangeRatingType < ActiveRecord::Migration[5.0]
  def change
    change_column :movies, :rating, :integer, default: 0
  end
end
