class AddEasyToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :easy, :string
  end
end
