class Post < ActiveRecord::Base
  attr_accessible :post_content
  belongs_to :user
  has_many :comments
end
