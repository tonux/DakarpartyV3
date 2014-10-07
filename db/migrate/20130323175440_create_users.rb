class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :nom
      t.string :prenom
      t.date :datenaiss
      t.string :adresse
      t.boolean :admin
      t.boolean :adminActu
      t.boolean :adminEvent
      t.boolean :sexe
      t.string :telephone

      t.timestamps
    end
  end
end
