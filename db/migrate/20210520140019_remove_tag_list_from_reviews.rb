class RemoveTagListFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :tag_list, :text
  end
end
