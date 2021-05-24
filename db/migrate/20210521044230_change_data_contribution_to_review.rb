class ChangeDataContributionToReview < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :contribution, :float
  end
end
