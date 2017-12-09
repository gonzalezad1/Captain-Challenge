class CreatePersoWeaps < ActiveRecord::Migration[5.1]
  def change
    create_table :perso_weaps do |t|
      t.belongs_to :personnage, index: true
      t.belongs_to :weapon,index: true
      t.timestamps
    end
  end
end
