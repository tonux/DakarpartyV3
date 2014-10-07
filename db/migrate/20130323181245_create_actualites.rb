class CreateActualites < ActiveRecord::Migration
  def change
    create_table :actualites do |t|
      t.string :titleActu
      t.string :contenu
      t.references :categoryActu
      t.references :user

      t.timestamps
    end
    add_index :actualites, :categoryActu_id
    add_index :actualites, :user_id
  end
end
