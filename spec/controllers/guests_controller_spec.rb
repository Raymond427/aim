require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe GuestsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Guest. As you add validations to Guest, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.attributes_for(:guest)
  }

  let(:chapter) {FactoryGirl.create(:chapter, :chapter_with_president)}

  let(:webmaster) {FactoryGirl.create(:member, :is_webmaster)}

  let(:invalid_attributes) {
    { first_name: nil, last_name: nil, email: nil, phone_number: nil, date: nil, message: nil }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GuestsController. Be sure to keep this updated too.
  let(:valid_session) { {chapter_id: chapter.id} }
  let(:webmaster_session) { {chapter_id: chapter.id, member_id: webmaster.id} }

  describe "GET #index" do
    it "assigns all guests as @guests" do
      guest = Guest.create! valid_attributes
      get :index, params: {}, session: webmaster_session
      expect(assigns(:guests)).to eq([guest])
    end
  end

  describe "GET #show" do
    it "assigns the requested guest as @guest" do
      guest = Guest.create! valid_attributes
      get :show, params: {id: guest.to_param}, session: valid_session
      expect(assigns(:guest)).to eq(guest)
    end
  end

  describe "GET #new" do
    it "assigns a new guest as @guest" do
      get :new, params: {}, session: valid_session
      expect(assigns(:guest)).to be_a_new(Guest)
    end
  end

  describe "GET #edit" do
    it "assigns the requested guest as @guest" do
      guest = Guest.create! valid_attributes
      get :edit, params: {id: guest.to_param}, session: valid_session
      expect(assigns(:guest)).to eq(guest)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Guest" do
        expect {
          post :create, params: {guest: valid_attributes}, session: valid_session
        }.to change(Guest, :count).by(1)
      end

      it "assigns a newly created guest as @guest" do
        post :create, params: {guest: valid_attributes}, session: valid_session
        expect(assigns(:guest)).to be_a(Guest)
        expect(assigns(:guest)).to be_persisted
      end

      it "redirects to the chapter homepage" do
        post :create, params: {guest: valid_attributes}, session: valid_session
        expect(response).to redirect_to(chapter)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved guest as @guest" do
        post :create, params: {guest: invalid_attributes}, session: valid_session
        expect(assigns(:guest)).to be_a_new(Guest)
      end

      it "re-renders the 'new' template" do
        post :create, params: {guest: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested guest" do
      guest = Guest.create! valid_attributes
      expect {
        delete :destroy, params: {id: guest.to_param}, session: webmaster_session
      }.to change(Guest, :count).by(-1)
    end

    it "redirects to the guests list" do
      guest = Guest.create! valid_attributes
      delete :destroy, params: {id: guest.to_param}, session: webmaster_session
      expect(response).to redirect_to(guests_path)
    end
  end

end
