class CreateCategoryAnnonces < ActiveRecord::Migration
  def change
    create_table :category_annonces do |t|
      t.string :titleCategory
      t.text :descCategory

      t.timestamps
    end
  end
end
