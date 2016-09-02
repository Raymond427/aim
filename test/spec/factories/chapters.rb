# Here we are creating a chapter that will be used to test our model's features
# FactoryGirl is a gem that let's you create testable objects easily as seen below

FactoryGirl.define do
  factory :chapter do
    school "The University of North Carolina at Charlotte"
    email "aim@uncc.edu"
    donation_snippet "https://www.paypal.com/uncc"
  end
end
