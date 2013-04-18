class Comment < ActiveRecord::Base
  attr_accessible :body, :resource_id, :user_id

  belongs_to :resource
  belongs_to :user

end
