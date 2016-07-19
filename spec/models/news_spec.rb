require 'rails_helper'

RSpec.describe News, type: :model do
  let(:news) { FactoryGirl.build(:news) }
  before do
    expect(news.valid?).to be_truthy
  end

  it "validates the presence of a title" do
    news.title = nil
    expect(news.valid?).to be_falsey
  end

  it "validates the presence of a date" do
    news.date = nil
    expect(news.valid?).to be_falsey
  end

  it "validates the presence of a mediatype" do
    news.mediatype = nil
    expect(news.valid?).to be_falsey
  end

  it "validates the presence of a description" do
    news.description = nil
    expect(news.valid?).to be_falsey
  end

  it "can't create a news post without a chapter" do
    news = News.new
    expect(news.save).to be_falsey
  end
end
