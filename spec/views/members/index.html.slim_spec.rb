require 'rails_helper'

RSpec.describe "members/index", type: :view do
  before(:each) do
    assign(:members, FactoryGirl.create_list(:member, 2))
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "general".to_s, :count => 2
    assert_select "tr>td", :text => "Linkedinurl".to_s, :count => 2
    assert_select "tr>td", :text => "Art".to_s, :count => 2
    assert_select "tr>td", :text => "Graduation Date".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Executive Position".to_s, :count => 2
  end
end
