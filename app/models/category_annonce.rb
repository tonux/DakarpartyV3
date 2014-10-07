class CategoryAnnonce < ActiveRecord::Base
  has_many :annonces
  attr_accessible :descCategory, :titleCategory
end
