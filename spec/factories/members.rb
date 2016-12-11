FactoryGirl.define do
  factory :member do
    first_name 'First Name'
    last_name 'Last Name'
    email 'Email'
    password 'Password'
    role 'general'
    linkedinurl 'Linkedinurl'
    major 'Art'
    graduation_date 'Graduation Date'
    is_executive false
    executive_position 'Executive Position'
    chapter
  end

  trait :is_webmaster do
    role 'webmaster'
  end

  trait :is_admin do
    role 'admin'
  end

  trait :is_president do
    is_executive true
    executive_position 'President'
    role 'admin'
  end
end
