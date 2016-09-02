require 'rails_helper'

RSpec.describe "chapters/new", type: :view do
  before(:each) do
    assign(:chapter, Chapter.new(
      :school => "MyString",
      :email => "MyString",
      :donation_snippet => "MyString"
    ))
  end

  it "renders new chapter form" do
    render

    assert_select "form[action=?][method=?]", chapters_path, "post" do

      assert_select "input#chapter_school[name=?]", "chapter[school]"

      assert_select "input#chapter_email[name=?]", "chapter[email]"

      assert_select "input#chapter_donation_snippet[name=?]", "chapter[donation_snippet]"
    end
  end
end
