class ChangeUsers < ActiveRecord::Migration
  def change
  	change_column("users", "admin", :boolean, :default => false)
  	change_column("users", "adminEvent", :boolean, :default => false)
  	change_column("users", "adminActu", :boolean, :default => false)
  end
end
