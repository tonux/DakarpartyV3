class CategoryGalerie < ActiveRecord::Base
  has_many :galeries
  attr_accessible :desc, :titleCategory

  validates :titleCategory, :presence  => true
end
