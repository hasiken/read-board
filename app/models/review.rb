class Review < ApplicationRecord
  acts_as_taggable
  belongs_to :user
  #validates :title,:content,:contribution,:difficulty,:time,:introduction,:genre, presence: true
  mount_uploader :image, ImageUploader
end
