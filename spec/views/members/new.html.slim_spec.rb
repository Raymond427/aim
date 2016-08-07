require 'rails_helper'

RSpec.describe "members/new", type: :view do
  before(:each) do
    @member = assign(:member, FactoryGirl.create(:member))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input#member_first_name[name=?]", "member[first_name]"

      assert_select "input#member_last_name[name=?]", "member[last_name]"

      assert_select "input#member_email[name=?]", "member[email]"

      assert_select "input#member_password[name=?]", "member[password]"

      assert_select "input#member_role_#{@member.role}[name=?]", "member[role]"

      assert_select "input#member_linkedinurl[name=?]", "member[linkedinurl]"

      assert_select "select#member_major[name=?]", "member[major]"

      assert_select "select#member_graduation_date[name=?]", "member[graduation_date]"

      assert_select "input#member_is_executive[name=?]", "member[is_executive]"

      assert_select "select#member_executive_position[name=?]", "member[executive_position]"
    end
  end
end
