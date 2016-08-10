require 'rails_helper'

RSpec.describe "mail_blasters/show", type: :view do
  before(:each) do
    @mail_blaster = assign(:mail_blaster, MailBlaster.create!(
      :to => "To",
      :subject => "Subject",
      :from => "From",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/To/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/From/)
    expect(rendered).to match(/MyText/)
  end
end
