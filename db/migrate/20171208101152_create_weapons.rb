class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :attack
      t.integer :defense
      t.integer :velocity

      t.timestamps
    end
  end
end
