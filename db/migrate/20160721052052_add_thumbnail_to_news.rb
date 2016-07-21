class AddThumbnailToNews < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :news, :thumbnail
  end

  def self.down
    remove_attachment :news, :thumbnail
  end
end
