class CategoryActu < ActiveRecord::Base
  has_many :actualites
  attr_accessible :descCategory, :titleCategory
end
