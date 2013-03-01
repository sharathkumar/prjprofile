class Account < ActiveRecord::Base
  attr_accessible :account_number
  belongs_to :user
end