class CreateFlyers < ActiveRecord::Migration[5.2]
  def change
    create_table :flyers do |t|
      t.string :user_name
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :occupation
      t.text :description
      t.string :img_url
      t.integer :airport_id

      t.timestamps
    end
  end
end
