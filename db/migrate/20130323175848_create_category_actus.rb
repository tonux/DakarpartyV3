class CreateCategoryActus < ActiveRecord::Migration
  def change
    create_table :category_actus do |t|
      t.string :titleCategory
      t.text :descCategory

      t.timestamps
    end
  end
end
