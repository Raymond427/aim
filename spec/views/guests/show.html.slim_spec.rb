require 'rails_helper'

RSpec.describe "guests/show", type: :view do
  before(:each) do
    @guest = assign(:guest, Guest.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :phone_number => "Phone Number",
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/MyText/)
  end
end
