class AddAttacToPersonnages < ActiveRecord::Migration[5.1]
  def change
    add_column :personnages, :attac, :integer
  end
end
