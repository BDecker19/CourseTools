class Resource < ActiveRecord::Base
  attr_accessible :link, :name

  belongs_to :user
  belongs_to :category
end
