class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :admin, :adminActu, :adminEvent, :adresse, :datenaiss, :login, :nom, :prenom, :sexe, :telephone

  validates :email,        :presence => true,
    :format         => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i},
    :uniqueness     => true
  validates :telephone, :presence  => true

  scope :garcons,         where(:sexe => true)
  scope :filles,          where(:sexe => false)
end
