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

RSpec.describe ChaptersController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Chapter. As you add validations to Chapter, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { school: 'uncc', email: 'unc@edu', logo_img:'www.uncc.edu', donation_url: 'www.paypal.com'} }
  let(:invalid_attributes) { { school: nil, email: nil, logo_img: nil, donation_url: nil } }
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ChaptersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  #TODO Write test for index

  describe "GET #show" do
    it "assigns the requested chapter as @chapter" do
      chapter = Chapter.create! valid_attributes
      get :show, params: {id: chapter.to_param}, session: valid_session
      expect(assigns(:chapter)).to eq(chapter)
    end
  end

  describe "GET #new" do
    it "assigns a new chapter as @chapter" do
      get :new, params: {}, session: valid_session
      expect(assigns(:chapter)).to be_a_new(Chapter)
    end
  end

  describe "GET #edit" do
    it "assigns the requested chapter as @chapter" do
      chapter = Chapter.create! valid_attributes
      get :edit, params: {id: chapter.to_param}, session: valid_session
      expect(assigns(:chapter)).to eq(chapter)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Chapter" do
        expect {
          post :create, params: {chapter: valid_attributes}, session: valid_session
        }.to change(Chapter, :count).by(1)
      end

      it "assigns a newly created chapter as @chapter" do
        post :create, params: {chapter: valid_attributes}, session: valid_session
        expect(assigns(:chapter)).to be_a(Chapter)
        expect(assigns(:chapter)).to be_persisted
      end

      it "redirects to the created chapter" do
        post :create, params: {chapter: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Chapter.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved chapter as @chapter" do
        post :create, params: {chapter: invalid_attributes}, session: valid_session
        expect(assigns(:chapter)).to be_a_new(Chapter)
      end

      it "re-renders the 'new' template" do
        post :create, params: {chapter: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { school: 'uncc', email: 'uc@edu', logo_img:'www.unc.edu', donation_url: 'www.pay.com'}
      }

      it "updates the requested chapter" do
        chapter = Chapter.create! valid_attributes
        put :update, params: {id: chapter.to_param, chapter: new_attributes}, session: valid_session
        chapter.reload
        expect(chapter.valid?).to be_truthy
      end

      it "assigns the requested chapter as @chapter" do
        chapter = Chapter.create! valid_attributes
        put :update, params: {id: chapter.to_param, chapter: valid_attributes}, session: valid_session
        expect(assigns(:chapter)).to eq(chapter)
      end

      it "redirects to the chapter" do
        chapter = Chapter.create! valid_attributes
        put :update, params: {id: chapter.to_param, chapter: valid_attributes}, session: valid_session
        expect(response).to redirect_to(chapter)
      end
    end

    context "with invalid params" do
      it "assigns the chapter as @chapter" do
        chapter = Chapter.create! valid_attributes
        put :update, params: {id: chapter.to_param, chapter: invalid_attributes}, session: valid_session
        expect(assigns(:chapter)).to eq(chapter)
      end

      it "re-renders the 'edit' template" do
        chapter = Chapter.create! valid_attributes
        put :update, params: {id: chapter.to_param, chapter: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested chapter" do
      chapter = Chapter.create! valid_attributes
      expect {
        delete :destroy, params: {id: chapter.to_param}, session: valid_session
      }.to change(Chapter, :count).by(-1)
    end

    it "redirects to the chapters list" do
      chapter = Chapter.create! valid_attributes
      delete :destroy, params: {id: chapter.to_param}, session: valid_session
      expect(response).to redirect_to(chapters_url)
    end
  end

end
