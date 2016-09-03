class Guest < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email

  after_validation :format_date

  def format_date
    self.date = self.date.to_date.to_formatted_s(:long_ordinal)
  end
end
