class AlterEvents < ActiveRecord::Migration
  def up

  	add_column("events", "heure_debut", :datetime)
  	add_column("events", "heure_fin", :datetime)
  end

  def down
  end
end
