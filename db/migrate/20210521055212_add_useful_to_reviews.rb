class AddUsefulToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :useful, :string
  end
end
