class ChangeEvents < ActiveRecord::Migration
  def change
  	change_column("events", "annuler", :boolean, :default => false)
  end

end
