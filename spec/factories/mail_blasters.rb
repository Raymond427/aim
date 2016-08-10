FactoryGirl.define do
  factory :mail_blaster do
    to "MyString"
    subject "MyString"
    from "MyString"
    body "MyText"
  end
end
