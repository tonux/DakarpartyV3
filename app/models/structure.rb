class Structure < ActiveRecord::Base
  has_many :events
  has_many :partenaires
  attr_accessible :adresse, :descStructure, :email, :nomStructure, :telephone
  validates :nomStructure, :presence  => true
end
