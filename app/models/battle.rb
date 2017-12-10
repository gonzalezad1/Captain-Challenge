class Battle < ApplicationRecord

  belongs_to :perso_weap
  belongs_to :combattant, :class_name => "PersoWeap"

  def initialize(arr)
    @perso1 = Personnage.find(arr[0].personnage_id)
    @perso2 = Personnage.find(arr[1].personnage_id)

    @weapon_perso1= Weapon.find(arr[0].weapon_id)
    @weapon_perso2= Weapon.find(arr[1].weapon_id)

    @attack_perso_1 = @perso1.attac + @weapon_perso1.attack
    @attack_perso_2 = @perso2.attac + @weapon_perso2.attack

    @life_perso_1 = @perso1.life + @weapon_perso1.defense
    @life_perso_2 = @perso2.life + @weapon_perso2.defense

    @velocity_perso_1 = @perso1.velocity + @weapon_perso1.velocity
    @velocity_perso_2 = @perso1.velocity + @weapon_perso1.velocity

  end

  def figth

    if @velocity_perso_1 < @velocity_perso_2
      attack(@attack_perso_2,@attack_perso_1, @life_perso_2,@life_perso_1)
    elsif perso1.velocity == perso2.velocity
      attack(@attack_perso_1,@attack_perso_2, @life_perso_1,@life_perso_2)
    else
      attack(@attack_perso_1,@attack_perso_2, @life_perso_1,@life_perso_2)
    end


  end

  def attack(attac_perso1,attac_perso2, life_perso1,life_perso2)
    @attac_for_perso1 = rand(attac_perso1)
    life_perso2 = life_perso2 - @attac_for_perso1
    if life_perso2 < 0
      return winner2
    else
      @attac_for_perso2 = rand(attac_perso2)
      life_perso1 = life_perso1 - @attac_for_perso2
      if life_perso2 < 0
        return winner1
      else
        attack(attac_perso1,attac_perso2, life_perso1,life_perso2)
      end
    end
  end
end
