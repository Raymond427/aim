class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :chapter
      t.timestamp :date
      t.text :message

      t.timestamps
    end
  end
end
