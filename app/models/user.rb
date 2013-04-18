class User < ActiveRecord::Base
  attr_accessible :email, :name, :password

  has_many :comments
  has_many :votes
  has_many :resources

end
