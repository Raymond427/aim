require 'rails_helper'

RSpec.describe "chapters/edit", type: :view do
  before(:each) do
    @chapter = assign(:chapter, Chapter.create!(
      :school => "MyString",
      :logo => "MyString",
      :email => "MyString",
      :donation_snippet => "MyString"
    ))
  end

  it "renders the edit chapter form" do
    render

    assert_select "form[action=?][method=?]", chapter_path(@chapter), "post" do

      assert_select "input#chapter_school[name=?]", "chapter[school]"

      assert_select "input#chapter_logo[name=?]", "chapter[logo]"

      assert_select "input#chapter_email[name=?]", "chapter[email]"

      assert_select "input#chapter_donation_snippet[name=?]", "chapter[donation_snippet]"
    end
  end
end
