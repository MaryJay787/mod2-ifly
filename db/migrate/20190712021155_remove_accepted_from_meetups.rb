class RemoveAcceptedFromMeetups < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetups, :accepted, :boolean
  end
end
