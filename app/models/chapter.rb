class Chapter < ApplicationRecord
  has_many :news
  has_many :members
  has_many :mail_blasters

  validates_presence_of :school
  validates_presence_of :email
  validates_presence_of :donation_snippet
  has_attached_file :logo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
