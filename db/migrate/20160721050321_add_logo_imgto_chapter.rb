class AddLogoImgtoChapter < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :chapters, :logo_img
  end

  def self.down
    remove_attachment :chapters, :logo_img
  end
end
