class CreateCategoryGaleries < ActiveRecord::Migration
  def change
    create_table :category_galeries do |t|
      t.string :titleCategory
      t.text :desc

      t.timestamps
    end
  end
end
