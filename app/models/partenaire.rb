class Partenaire < ActiveRecord::Base

  belongs_to :structure
  attr_accessible :descPartenaire, :email, :nomPartenaire, :telephone
  validates :nomPartenaire, :presence  => true
end
