# Here we are creating a chapter that will be used to test our model's features
# FactoryGirl is a gem that let's you create testable objects easily as seen below

FactoryGirl.define do
  factory :chapter do
    school 'The University of North Carolina at Charlotte'
    logo_img 'https://www.uncc.edu/logo_img'
    email 'aim@uncc.edu'
    donation_url 'https://www.paypal.com/uncc'
  end
  factory :chapter_with_news, class: 'Chapter' do
    after(:build) do |gallery|
      chapter.news << FactoryGirl.create(:news_one, news_id: news)
    end
  end
end
