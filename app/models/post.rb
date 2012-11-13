class Post < ActiveRecord::Base
  attr_accessible :body, :image

  validates :body, presence: true

  mount_uploader :image, PostImageUploader

  has_many :comments
end
