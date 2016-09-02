class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.string :school
      t.string :acronym
      t.string :logo
      t.string :email
      t.string :donation_url
      t.string :facebook_url
      t.string :instagram_url
      t.string :twitter_url
      t.string :linkedin_url
      t.string :youtube_url

      t.timestamps
    end
  end
end
