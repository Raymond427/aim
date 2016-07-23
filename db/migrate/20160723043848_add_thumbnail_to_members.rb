class AddThumbnailToMembers < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :members, :thumbnail
  end

  def self.down
    remove_attachment :members, :thumbnail
  end
end
