# This is the model for the chapter database, if the user's request requires chapter data to be manipulated the chapter controller calls this file to access the chapter database
# This class inherits from the ActiveRecord class, which allows for ActiveRecord methods to be used here

class Chapter < ApplicationRecord
  # has_many :members, dependent: :destroy
  has_many :news
  has_many :members
  has_many :mail_blasters

  # First, we validate that all of the required attributes are present
  validates_presence_of :school
  validates_presence_of :email
  validates_presence_of :donation_snippet
  has_attached_file :logo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
