class Lieu < ActiveRecord::Base
  has_many :events
  attr_accessible :NomRegion, :descLieu, :nomLieu
end
