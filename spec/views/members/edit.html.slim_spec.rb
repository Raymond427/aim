require 'rails_helper'

RSpec.describe "members/edit", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :role => "MyString",
      :linkedinurl => "MyString",
      :major => "MyString",
      :graduation_date => "MyString",
      :is_executive => false,
      :executive_position => "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input#member_first_name[name=?]", "member[first_name]"

      assert_select "input#member_last_name[name=?]", "member[last_name]"

      assert_select "input#member_email[name=?]", "member[email]"

      assert_select "input#member_password_digest[name=?]", "member[password_digest]"

      assert_select "input#member_role[name=?]", "member[role]"

      assert_select "input#member_linkedinurl[name=?]", "member[linkedinurl]"

      assert_select "input#member_major[name=?]", "member[major]"

      assert_select "input#member_graduation_date[name=?]", "member[graduation_date]"

      assert_select "input#member_is_executive[name=?]", "member[is_executive]"

      assert_select "input#member_executive_position[name=?]", "member[executive_position]"
    end
  end
end
