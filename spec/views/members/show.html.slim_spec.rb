require 'rails_helper'

RSpec.describe "members/show", type: :view do
  before(:each) do
    @member = assign(:member, FactoryGirl.create(:member))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/Linkedinurl/)
    expect(rendered).to match(/Major/)
    expect(rendered).to match(/Graduation Date/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Executive Position/)
  end
end
