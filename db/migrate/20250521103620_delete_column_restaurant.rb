class DeleteColumnRestaurant < ActiveRecord::Migration[7.1]
  def change
    remove_column :ratings, :restaurant_id
  end
end
