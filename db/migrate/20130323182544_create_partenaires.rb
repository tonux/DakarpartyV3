class CreatePartenaires < ActiveRecord::Migration
  def change
    create_table :partenaires do |t|
      t.string :nomPartenaire
      t.string :telephone
      t.string :email
      t.string :descPartenaire

      t.timestamps
    end
  end
end
