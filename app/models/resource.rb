class Resource < ActiveRecord::Base
  attr_accessible :link, :name, :category_id, :description

  belongs_to :user
  belongs_to :category

end
