class RemoveAirportIdFromMeetups < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetups, :airport_id, :integer
  end
end
