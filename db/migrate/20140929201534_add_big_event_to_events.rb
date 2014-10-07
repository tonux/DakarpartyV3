class AddBigEventToEvents < ActiveRecord::Migration
  def change
    add_column :events, :big_event, :boolean
  end
end
