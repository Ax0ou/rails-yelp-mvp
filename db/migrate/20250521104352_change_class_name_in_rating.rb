class ChangeClassNameInRating < ActiveRecord::Migration[7.1]
  def change
    rename_table :ratings, :reviews
  end
end
