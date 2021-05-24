class RemoveDifficultyFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :difficulty, :float
  end
end
