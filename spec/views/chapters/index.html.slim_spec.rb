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
end
