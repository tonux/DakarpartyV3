class AddAttribuEvent < ActiveRecord::Migration
  def up
  	change_table(:events) do |t|
  	t.string :picture
  	end
  end

  def down
  end
end
