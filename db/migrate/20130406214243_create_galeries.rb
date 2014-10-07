class CreateGaleries < ActiveRecord::Migration
  def change
    create_table :galeries do |t|
      t.string :title
      t.string :picture

      t.timestamps
    end
  end
end
