class LogIn < ActiveRecord::Base
 attr_accessible :user_name, :password
 belongs_to :user
end
