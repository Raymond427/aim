class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.belongs_to :chapter, index: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :password_digest
      t.string :thumbnail_url
      t.string :role
      t.string :linkedinurl
      t.string :major
      t.string :graduation_date
      t.boolean :is_executive
      t.boolean :subscribed
      t.string :executive_position

      t.timestamps
    end
  end
end
