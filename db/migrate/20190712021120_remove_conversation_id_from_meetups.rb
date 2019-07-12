class RemoveConversationIdFromMeetups < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetups, :conversation_id, :integer
  end
end
