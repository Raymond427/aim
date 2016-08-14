require 'rails_helper'

RSpec.describe "mail_blasters/index", type: :view do
  before(:each) do
    assign(:mail_blasters, [
      MailBlaster.create!(
        :to => "To",
        :subject => "Subject",
        :from => "From",
        :body => "MyText"
      ),
      MailBlaster.create!(
        :to => "To",
        :subject => "Subject",
        :from => "From",
        :body => "MyText"
      )
    ])
  end

  xit "renders a list of mail_blasters" do
    render
    assert_select "tr>td", :text => "To".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
