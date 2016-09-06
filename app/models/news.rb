class News < ApplicationRecord
  belongs_to :chapter

  validates_presence_of :title
  validates_presence_of :date
  validates_presence_of :mediatype
  validates_presence_of :description
    has_attached_file :thumbnail, styles: {
    thumb: '100x100>',
    square: '200x200#',
    preview: '480x480>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/
end
