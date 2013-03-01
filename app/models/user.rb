class User < ActiveRecord::Base
  attr_accessible :name, :age
  has_many :posts
  has_many :comments, :through => :posts
  has_one :account
  has_one :log_in, :dependent => :destroy






end
