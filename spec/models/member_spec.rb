require 'rails_helper'

RSpec.describe Member, type: :model do
  let(:member) { FactoryGirl.build(:member) }
  before do
    expect(member.valid?).to be_truthy
  end

  it "validates the presence of a first_name" do
    member.first_name = nil
    expect(member.valid?).to be_falsey
  end

  it "validates the presence of a last_name" do
    member.last_name = nil
    expect(member.valid?).to be_falsey
  end

  it "validates the presence of a email" do
    member.email = nil
    expect(member.valid?).to be_falsey
  end

  it "validates the presence of a password" do
    member.password_digest = nil
    expect(member.valid?).to be_falsey
  end

  it "validates the presence of a role" do
    member.role = nil
    expect(member.valid?).to be_falsey
  end

  it "validates the presence of a major" do
    member.major = nil
    expect(member.valid?).to be_falsey
  end

  it "validates whether the member is an executive" do
    member.executive_position = nil
    expect(member.valid?).to be_truthy
  end

  it "can't create a member post without a chapter" do
    member = Member.new
    expect(member.save).to be_falsey
  end
end
