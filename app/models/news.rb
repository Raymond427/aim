class News < ApplicationRecord
  belongs_to :chapter
  
  validates_presence_of :title
  validates_presence_of :date
  validates_presence_of :mediatype
  validates_presence_of :description
end
