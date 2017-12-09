class CreatePersonnages < ActiveRecord::Migration[5.1]
  def change
    create_table :personnages do |t|
      t.string :name
      t.integer :exp
      t.integer :life
      t.integer :velocity

      t.timestamps
    end
  end
end
