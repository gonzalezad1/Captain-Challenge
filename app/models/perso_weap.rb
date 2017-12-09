class PersoWeap < ApplicationRecord

  belongs_to :personnage
  belongs_to :weapon

  has_many :battle_personnage_one, foreign_key: :personnageone_id, class_name: Battle
  has_many :battle_personnage_two, foreign_key: :personnagetwo_id, class_name: Battle

  has_many :personnage_one, through: :persoannage_one
  has_many :personnage_two, through: :persoannage_two

end
