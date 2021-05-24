class ChangeDataDifficultyToReview < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :difficulty, :float
  end
end
