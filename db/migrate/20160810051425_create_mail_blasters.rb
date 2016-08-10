class CreateMailBlasters < ActiveRecord::Migration[5.0]
  def change
    create_table :mail_blasters do |t|
      t.string :to, array: true, default: []
      t.string :subject
      t.string :from
      t.text :body

      t.timestamps
    end
  end
end
