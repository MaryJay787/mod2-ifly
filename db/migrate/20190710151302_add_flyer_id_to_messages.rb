class AddFlyerIdToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :flyer_id, :integer
  end
end
