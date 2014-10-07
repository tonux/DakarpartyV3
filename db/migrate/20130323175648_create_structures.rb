class CreateStructures < ActiveRecord::Migration
  def change
    create_table :structures do |t|
      t.string :nomStructure
      t.string :adresse
      t.string :telephone
      t.string :email
      t.text :descStructure

      t.timestamps
    end
  end
end
