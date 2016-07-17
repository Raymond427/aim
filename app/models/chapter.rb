# This is the model for the chapter database, if the user's request requires chapter data to be manipulated the chapter controller calls this file to access the chapter database
# This class inherits from the ActiveRecord class, which allows for ActiveRecord methods to be used here

class Chapter < ApplicationRecord
  # has_many :members, dependent: :destroy
  # has_many :news, dependent: :destroy

  # First, we validate that all of the required attributes are present
  validates_presence_of :school
  validates_presence_of :logo_img
  validates_presence_of :email
  validates_presence_of :donation_url
end
