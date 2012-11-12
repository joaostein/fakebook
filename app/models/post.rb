class Post < ActiveRecord::Base
  attr_accessible :body, :image

  validates :body, presence: true
end
