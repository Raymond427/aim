require 'rails_helper'

RSpec.describe "chapters/edit", type: :view do
  before(:each) do
    @chapter = assign(:chapter, Chapter.create!(
      :school => "MyString",
      :logo_img => "MyString",
      :email => "MyString",
      :donation_url => "MyString"
    ))
  end

  it "renders the edit chapter form" do
    render

    assert_select "form[action=?][method=?]", chapter_path(@chapter), "post" do

      assert_select "input#chapter_school[name=?]", "chapter[school]"

      assert_select "input#chapter_logo_img[name=?]", "chapter[logo_img]"

      assert_select "input#chapter_email[name=?]", "chapter[email]"

      assert_select "input#chapter_donation_url[name=?]", "chapter[donation_url]"
    end
  end
end