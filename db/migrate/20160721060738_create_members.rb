class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :role
      t.string :linkedinurl
      t.string :major
      t.string :graduation_date
      t.boolean :is_executive
      t.string :executive_position

      t.timestamps
    end
  end
end
