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
  },
  convert_options: {
    thumb: '-set colorspace sRGB -strip',
    preview: '-set colorspace sRGB -strip',
    large: '-set colorspace sRGB -strip'
  }

  validates_attachment :thumbnail,
    size: { in: 0..10.megabytes },
    content_type: { content_type: /^image\/(jpeg|png|gif|tiff)$/ }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/
end
