require 'test_helper'

RSpec.describe ChaptersController, type: :controller do
  describe "GET #new" do
    it "should get new" do
      get login_path
      assert_response :success
    end
  end
end
