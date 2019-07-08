class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.string :name
      t.string :location
      t.string :store_hours
      t.integer :airport_id
      t.integer :conversation_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
