class RemoveContributionFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :contribution, :float
  end
end
