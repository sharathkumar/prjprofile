class Comment < ActiveRecord::Base
  attr_accessible :comment_content
  belongs_to :post
end

