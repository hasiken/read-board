class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.string :contribution
      t.string :difficulty
      t.string :time
      t.text :introduction
      t.string :genre
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
