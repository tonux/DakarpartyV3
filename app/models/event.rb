class Event < ActiveRecord::Base
  belongs_to :categoryEvent
  belongs_to :structure
  belongs_to :lieu
  belongs_to :user
  attr_accessible :annuler, :date_debut, :date_fin, :descEvent, :nombrePersonne, :titleEvent, :picture, :heure_fin, :heure_debut, :user_id
  attr_accessible :categoryEvent_id, :structure_id, :lieu_id
  mount_uploader :picture, PictureUploader
  validates :titleEvent, :presence  => true
  validates :descEvent, :presence  => true

  validates :heure_debut, :presence  => true
  validates :heure_fin, :presence  => true
  validates_presence_of :categoryEvent_id
  validates_presence_of :lieu_id
  validates_presence_of :structure_id

  # def self.search(search)
  # search_condition = "%" + search + "%"
  # find(:all, :conditions => ['titleEvent LIKE ? OR descEvent LIKE ?', search_condition, search_condition])
  # end

end