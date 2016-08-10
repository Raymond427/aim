require 'rails_helper'

RSpec.describe "MailBlasters", type: :request do
  describe "GET /mail_blasters" do
    it "works! (now write some real specs)" do
      get mail_blasters_path
      expect(response).to have_http_status(200)
    end
  end
end
