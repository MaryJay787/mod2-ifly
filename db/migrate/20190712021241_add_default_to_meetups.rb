class AddDefaultToMeetups < ActiveRecord::Migration[5.2]
  def change
    add_column :meetups, :airport_id, :integer, default: nil
  end
end
