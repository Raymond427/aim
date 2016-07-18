FactoryGirl.define do

  # news factory with a `belongs_to` association for the chapter
  factory :news do
    title 'CF Cycle for Life'
    date '2014-10-18'
    mediatype 'Image'
    description 'AIM helped the Cystic Fibrosis Foundation hold the CF Cycle for Life bicycle'
    chapter
  end
end
