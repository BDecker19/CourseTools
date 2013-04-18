class Vote < ActiveRecord::Base
  attr_accessible :resource_id

  belongs_to :resource
end
