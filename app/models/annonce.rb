class Annonce < ActiveRecord::Base
  belongs_to :categoryAnnonce
  attr_accessible :date_debut, :date_fin, :descAnnonce, :titleAnnonce

  validates :titleAnnonce, :presence  => true
  validates :descAnnonce, :presence  => true
  
end
