FactoryGirl.define do
  factory :mail_blaster do
    to "MyString"
    heading "MyString"
    subject "MyString"
    from "MyString"
    body "MyText"
  end
end
