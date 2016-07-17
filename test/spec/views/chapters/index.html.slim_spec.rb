require 'rails_helper'

RSpec.describe "chapters/index", type: :view do
  before(:each) do
    assign(:chapters, [
      Chapter.create!(
        :school => "School",
        :logo_img => "Logo Img",
        :email => "Email",
        :donation_url => "Donation Url"
      ),
      Chapter.create!(
        :school => "School",
        :logo_img => "Logo Img",
        :email => "Email",
        :donation_url => "Donation Url"
      )
    ])
  end

  it "renders a list of chapters" do
    render
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Logo Img".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Donation Url".to_s, :count => 2
  end
end
