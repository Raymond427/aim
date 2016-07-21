require 'rails_helper'

RSpec.describe "chapters/index", type: :view do
  before(:each) do
    assign(:chapters, [
      Chapter.create!(
        :school => "School",
        :email => "Email",
        :donation_url => "Donation Url"
      ),
      Chapter.create!(
        :school => "School",
        :email => "Email",
        :donation_url => "Donation Url"
      )
    ])
  end
end
