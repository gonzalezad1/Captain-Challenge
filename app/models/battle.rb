class Battle < ApplicationRecord

  belongs_to :perso_weap
  belongs_to :combattant, :class_name => "PersoWeap"
end
