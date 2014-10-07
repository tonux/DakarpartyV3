class AddStructureIdToPartenaires < ActiveRecord::Migration
  def change
    add_column :partenaires, :structure_id, :integer
  end
end
