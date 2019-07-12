class AddDefaultValueToMeetups < ActiveRecord::Migration[5.2]
  def change
    add_column :meetups, :conversation_id, :integer, default: nil
  end
end
