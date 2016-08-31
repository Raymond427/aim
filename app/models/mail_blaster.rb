class MailBlaster < ApplicationRecord
  belongs_to :chapter

  validates_presence_of :heading
  validates_presence_of :subject
  validates_presence_of :from
  validates_presence_of :body
end
