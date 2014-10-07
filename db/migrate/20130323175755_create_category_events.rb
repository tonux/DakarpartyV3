class CreateCategoryEvents < ActiveRecord::Migration
  def change
    create_table :category_events do |t|
      t.string :titleCategory
      t.text :descCategory

      t.timestamps
    end
  end
end
