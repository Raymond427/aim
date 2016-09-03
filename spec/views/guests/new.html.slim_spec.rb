require 'rails_helper'

RSpec.describe "guests/new", type: :view do
  before(:each) do
    assign(:guest, Guest.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone_number => "MyString",
      :message => "MyText"
    ))
  end

  it "renders new guest form" do
    render

    assert_select "form[action=?][method=?]", guests_path, "post" do

      assert_select "input#guest_first_name[name=?]", "guest[first_name]"

      assert_select "input#guest_last_name[name=?]", "guest[last_name]"

      assert_select "input#guest_email[name=?]", "guest[email]"

      assert_select "input#guest_phone_number[name=?]", "guest[phone_number]"

      assert_select "textarea#guest_message[name=?]", "guest[message]"
    end
  end
end
