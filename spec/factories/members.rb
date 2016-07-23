FactoryGirl.define do
  factory :member do
    first_name "First Name"
    last_name "Last Name"
    email "Email"
    password_digest "Password Digest"
    role "general"
    linkedinurl "Linkedinurl"
    major "Art"
    graduation_date "Graduation Date"
    is_executive false
    executive_position "Executive Position"
  end
end
