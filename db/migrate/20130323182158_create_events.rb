class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :titleEvent
      t.string :descEvent
      t.integer :nombrePersonne
      t.date :date_debut
      t.date :date_fin
      t.boolean :annuler
      t.references :categoryEvent
      t.references :structure
      t.references :lieu
      t.references :user

      t.timestamps
    end
    add_index :events, :categoryEvent_id
    add_index :events, :structure_id
    add_index :events, :lieu_id
    add_index :events, :user_id
  end
end
