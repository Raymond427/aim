require 'rails_helper'

RSpec.describe "chapters/index", type: :view do
  before(:each) do
    assign(:chapters, [
      Chapter.create!(
        :school => "School",
        :logo => "Logo Img",
        :email => "Email",
        :donation_snippet => "Donation Url"
      ),
      Chapter.create!(
        :school => "School",
        :logo => "Logo Img",
        :email => "Email",
        :donation_snippet => "Donation Url"
      )
    ])
  end
end
