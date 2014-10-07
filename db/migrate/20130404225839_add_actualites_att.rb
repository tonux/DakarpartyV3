class AddActualitesAtt < ActiveRecord::Migration
  def up

  	add_column("actualites", "picture", :string)
  end

  def down
  end
end
