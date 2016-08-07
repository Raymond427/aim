RSpec.describe SessionsController, type: :controller do
  describe "GET #new" do
    it "should get new" do
      get :new
      assert_response :success
    end
  end
end
