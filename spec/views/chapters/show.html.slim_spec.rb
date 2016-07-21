require 'rails_helper'

RSpec.describe "chapters/show", type: :view do
  before(:each) do
    @chapter = assign(:chapter, Chapter.create!(
      :school => "School",
      :email => "Email",
      :donation_url => "Donation Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/School/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Donation Url/)
  end
end
