class AddColumnReferencie < ActiveRecord::Migration[7.1]
  def change
    add_reference :ratings, :restaurant, index: true
  end
end
