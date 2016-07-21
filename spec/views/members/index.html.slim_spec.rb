require 'rails_helper'

RSpec.describe "members/index", type: :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :password_digest => "Password Digest",
        :role => "Role",
        :linkedinurl => "Linkedinurl",
        :major => "Major",
        :graduation_date => "Graduation Date",
        :is_executive => false,
        :executive_position => "Executive Position"
      ),
      Member.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :password_digest => "Password Digest",
        :role => "Role",
        :linkedinurl => "Linkedinurl",
        :major => "Major",
        :graduation_date => "Graduation Date",
        :is_executive => false,
        :executive_position => "Executive Position"
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "Linkedinurl".to_s, :count => 2
    assert_select "tr>td", :text => "Major".to_s, :count => 2
    assert_select "tr>td", :text => "Graduation Date".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Executive Position".to_s, :count => 2
  end
end
