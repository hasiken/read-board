class AddTagListToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :tag_list, :text
  end
end
