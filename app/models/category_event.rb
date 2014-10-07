class CategoryEvent < ActiveRecord::Base
  has_many :events
  attr_accessible :descCategory, :titleCategory
end
