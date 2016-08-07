require 'rails_helper'

RSpec.describe "chapters/new", type: :view do
  before(:each) do
    assign(:chapter, Chapter.new(
      :school => "MyString",
      :logo => "MyString",
      :email => "MyString",
      :donation_url => "MyString"
    ))
  end

  it "renders new chapter form" do
    render

    assert_select "form[action=?][method=?]", chapters_path, "post" do

      assert_select "input#chapter_school[name=?]", "chapter[school]"

      assert_select "input#chapter_logo[name=?]", "chapter[logo]"

      assert_select "input#chapter_email[name=?]", "chapter[email]"

      assert_select "input#chapter_donation_url[name=?]", "chapter[donation_url]"
    end
  end
end
