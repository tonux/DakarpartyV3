class Galerie < ActiveRecord::Base
  belongs_to :categoryGalerie
  attr_accessible :picture, :title

  validates :title, :presence  => true
end
