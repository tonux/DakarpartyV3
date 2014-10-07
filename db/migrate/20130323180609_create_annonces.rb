class CreateAnnonces < ActiveRecord::Migration
  def change
    create_table :annonces do |t|
      t.string :titleAnnonce
      t.text :descAnnonce
      t.date :date_debut
      t.date :date_fin
      t.references :categoryAnnonce
      t.references :user

      t.timestamps
    end
    add_index :annonces, :categoryAnnonce_id
    add_index :annonces, :user_id
  end
end
