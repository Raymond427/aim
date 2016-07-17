require 'rails_helper'

RSpec.describe NewsController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # News. As you add validations to News, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { title: 'Hey', date: '2016-08-06', mediatype: 'Image', description: 'Hey' } }
  let(:invalid_attributes) { { title: nil, date: nil, mediatype: nil, description: nil } }
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # newsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all news as @news" do
      News = News.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:news)).to eq([News])
    end
  end

  describe "GET #show" do
    it "assigns the requested News as @News" do
      News = News.create! valid_attributes
      get :show, params: {id: News.to_param}, session: valid_session
      expect(assigns(:News)).to eq(News)
    end
  end

  describe "GET #new" do
    it "assigns a new News as @News" do
      get :new, params: {}, session: valid_session
      expect(assigns(:News)).to be_a_new(News)
    end
  end

  describe "GET #edit" do
    it "assigns the requested News as @News" do
      News = News.create! valid_attributes
      get :edit, params: {id: News.to_param}, session: valid_session
      expect(assigns(:News)).to eq(News)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new News" do
        expect {
          post :create, params: {News: valid_attributes}, session: valid_session
        }.to change(News, :count).by(1)
      end

      it "assigns a newly created News as @News" do
        post :create, params: {News: valid_attributes}, session: valid_session
        expect(assigns(:News)).to be_a(News)
        expect(assigns(:News)).to be_persisted
      end

      it "redirects to the created News" do
        post :create, params: {News: valid_attributes}, session: valid_session
        expect(response).to redirect_to(News.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved News as @News" do
        post :create, params: {News: invalid_attributes}, session: valid_session
        expect(assigns(:News)).to be_a_new(News)
      end

      it "re-renders the 'new' template" do
        post :create, params: {News: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested News" do
        News = News.create! valid_attributes
        put :update, params: {id: News.to_param, News: new_attributes}, session: valid_session
        News.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested News as @News" do
        News = News.create! valid_attributes
        put :update, params: {id: News.to_param, News: valid_attributes}, session: valid_session
        expect(assigns(:News)).to eq(News)
      end

      it "redirects to the News" do
        News = News.create! valid_attributes
        put :update, params: {id: News.to_param, News: valid_attributes}, session: valid_session
        expect(response).to redirect_to(News)
      end
    end

    context "with invalid params" do
      it "assigns the News as @News" do
        News = News.create! valid_attributes
        put :update, params: {id: News.to_param, News: invalid_attributes}, session: valid_session
        expect(assigns(:News)).to eq(News)
      end

      it "re-renders the 'edit' template" do
        News = News.create! valid_attributes
        put :update, params: {id: News.to_param, News: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested News" do
      News = News.create! valid_attributes
      expect {
        delete :destroy, params: {id: News.to_param}, session: valid_session
      }.to change(News, :count).by(-1)
    end

    it "redirects to the news list" do
      News = News.create! valid_attributes
      delete :destroy, params: {id: News.to_param}, session: valid_session
      expect(response).to redirect_to(news_url)
    end
  end
end
