require 'rails_helper'

RSpec.describe "mail_blasters/edit", type: :view do
  before(:each) do
    @mail_blaster = assign(:mail_blaster, MailBlaster.create!(
      :to => "MyString",
      :subject => "MyString",
      :from => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit mail_blaster form" do
    render

    assert_select "form[action=?][method=?]", mail_blaster_path(@mail_blaster), "post" do

      assert_select "input#mail_blaster_to[name=?]", "mail_blaster[to]"

      assert_select "input#mail_blaster_subject[name=?]", "mail_blaster[subject]"

      assert_select "input#mail_blaster_from[name=?]", "mail_blaster[from]"

      assert_select "textarea#mail_blaster_body[name=?]", "mail_blaster[body]"
    end
  end
end
