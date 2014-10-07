class ChangeActu < ActiveRecord::Migration
  def change
  		change_column("actualites", "contenu", :text)
  end

end
