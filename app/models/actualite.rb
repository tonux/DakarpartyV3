class Actualite < ActiveRecord::Base
  belongs_to :categoryActu
  attr_accessible :contenu, :titleActu, :categoryActu_id, :picture

  validates :contenu, :presence  => true
  validates :titleActu, :presence  => true

  mount_uploader :picture, PictureUploader
end
