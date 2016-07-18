class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.belongs_to :chapter, index: true
      t.string :title
      t.string :date
      t.string :mediatype
      t.string :youtube_url
      t.string :thumbnail
      t.string :description

      t.timestamps
    end
  end
end
