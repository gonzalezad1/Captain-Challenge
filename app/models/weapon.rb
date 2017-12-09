class Weapon < ApplicationRecord

  has_many :perso_weaps
  has_many :personnages, through: :perso_weaps

end
