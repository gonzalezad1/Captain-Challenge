class CreateBattles < ActiveRecord::Migration[5.1]
  def change
    create_table :battles do |t|

      t.integer :personnageone_id, index: true
      t.integer :personnagetwo_id, index: true
      t.integer :winner
      t.text :recapfight
      t.timestamps
    end
  end
end
