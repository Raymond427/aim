# These are our tests for the chapter model
# The chapter we created with FactoryGirl is brought in with the let clause
# Before we test we verify that the chapter we made is valid, so that if it becomes invalid, we know it was the changes inside the tests that made it invalid
# The it clauses explain what each test is testing for and is pretty straight forward

require 'rails_helper'

RSpec.describe Chapter, type: :model do
  let(:chapter) { FactoryGirl.build(:chapter) }
    before do
      expect(chapter.valid?).to be_truthy
    end

  it "validates the presence of a school" do
    chapter.school = nil
    expect(chapter.valid?).to be_falsey
  end

  # it "validates the presence of a logo image" do
  #   chapter.logo_img = nil
  #   expect(chapter.valid?).to be_falsey
  # end

  it "validates the presence of an email address" do
    chapter.email = nil
    expect(chapter.valid?).to be_falsey
  end

  it "validates the presence of a donation URL" do
    chapter.donation_url = nil
    expect(chapter.valid?).to be_falsey
  end
end
