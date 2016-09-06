class Member < ApplicationRecord
  belongs_to :chapter

  has_attached_file :thumbnail, styles: {
      thumb: ['100x100#',  :jpg, :quality => 70],
      preview: ['480x480#',  :jpg, :quality => 70],
      large:['600>',      :jpg, :quality => 70]
    },
    convert_options: {
      thumb: '-set colorspace sRGB -strip',
      preview: '-set colorspace sRGB -strip',
      large: '-set colorspace sRGB -strip'
    }

  validates_attachment :thumbnail,
    size: { in: 0..10.megabytes },
    content_type: { content_type: /^image\/(jpeg|png|gif|tiff)$/ }

  MAJORS = ['Accounting', 'Africana Studies', 'Anthropology',
    'Architecture', 'Art', 'Art History',
    'Athletic Training', 'Biology', 'Business Administration',
    'Chemistry', 'Child and Family Development', 'Civil Engineering',
    'Civil Engineering Technology', 'Computer Science', 'Computer Engineering',
    'Construction Management', 'Criminal Justice', 'Dance',
    'Earth and Environmental Sciences', 'Economics', 'Electrical Engineering',
    'Electrical Engineering Technology', 'Elementary Education', 'English',
    'Environmental Studies', 'Exercise Science', 'Finance',
    'Fire Safety Engineering Technology', 'French', 'Geography',
    'Geology', 'German', 'History',
    'International Business', 'International Studies', 'Japanese',
    'Latin American Studies', 'Management', 'Management Information Systems',
    'Marketing', 'Mathematics', 'Mathematics for Business',
    'Mechanical Engineering', 'Mechanical Engineering Technology', 'Meteorology',
    'Middle Grades Education', 'Music', 'Neurodiagnostics and Sleep Science',
    'Nursing', 'Ops & Supply Chain Management', 'Pre-Law',
    'Philosophy', 'Physics', 'Political Science',
    'Psychology', 'Public Health', 'Religious Studies',
    'Respiratory Therapy', 'Social Work', 'Sociology',
    'Spanish', 'Special Education', 'Systems Engineering',
    'Theatre']
  POSITIONS = ['President', 'Vice President', 'Treasurer',
    'Secretary', 'Strategic Advisor', 'Director of Strategic Partnerships',
    'Director of Programs', 'Director of Public Relations', 'Director of Publications',
    'Director of Community Service', 'Director of Fundraising', 'Historian', 'Digital Administrator']
  GRAD_MONTHS = ['May', 'December']

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  has_secure_password
  validates :major, inclusion: { in: MAJORS }
  validates :is_executive, inclusion: { in: [true, false] }
  validates :is_executive, exclusion: { in: [nil] }
  validates :role, inclusion: { in: ['webmaster', 'admin', 'editor', 'general'] }
  validates_presence_of :chapter_id

  # Returns the hash digest of the given string, use this for creating members in factories.
  def Member.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
