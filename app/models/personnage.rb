class Personnage < ApplicationRecord

  has_many :perso_weaps
  has_many :weapons, through: :perso_weaps

end
