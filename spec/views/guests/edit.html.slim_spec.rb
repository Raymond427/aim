require 'rails_helper'

RSpec.describe "guests/edit", type: :view do
  before(:each) do
    @guest = assign(:guest, Guest.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone_number => "MyString",
      :message => "MyText"
    ))
  end

  it "renders the edit guest form" do
    render

    assert_select "form[action=?][method=?]", guest_path(@guest), "post" do

      assert_select "input#guest_first_name[name=?]", "guest[first_name]"

      assert_select "input#guest_last_name[name=?]", "guest[last_name]"

      assert_select "input#guest_email[name=?]", "guest[email]"

      assert_select "input#guest_phone_number[name=?]", "guest[phone_number]"

      assert_select "textarea#guest_message[name=?]", "guest[message]"
    end
  end
end
