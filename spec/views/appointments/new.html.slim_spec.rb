require 'rails_helper'

RSpec.describe "appointments/new", type: :view do
  before(:each) do
    assign(:appointment, Appointment.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone_number => "MyString",
      :message => "MyText"
    ))
  end

  it "renders new appointment form" do
    render

    assert_select "form[action=?][method=?]", appointments_path, "post" do

      assert_select "input#appointment_first_name[name=?]", "appointment[first_name]"

      assert_select "input#appointment_last_name[name=?]", "appointment[last_name]"

      assert_select "input#appointment_email[name=?]", "appointment[email]"

      assert_select "input#appointment_phone_number[name=?]", "appointment[phone_number]"

      assert_select "textarea#appointment_message[name=?]", "appointment[message]"
    end
  end
end
