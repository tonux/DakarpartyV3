class CreateLieus < ActiveRecord::Migration
  def change
    create_table :lieus do |t|
      t.string :nomLieu
      t.string :NomRegion
      t.string :descLieu

      t.timestamps
    end
  end
end
