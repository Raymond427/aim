require 'rails_helper'

RSpec.describe NewsController, type: :controller do

  let(:chapter) { FactoryGirl.create(:chapter) }

  # This should return the minimal set of attributes required to create a valid
  # News. As you add validations to news, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { FactoryGirl.attributes_for(:news) }
  let(:invalid_attributes) { { title: nil, date: nil, mediatype: nil, description: nil } }
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NewsController. Be sure to keep this updated too.
  let(:member) { FactoryGirl.create(:member, :is_webmaster) }
  let(:valid_session) { { chapter_id: chapter.id, member_id: member.id } }

  describe "GET #index" do
    it "assigns all news as @news" do
      news = chapter.news.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:news)).to eq([news])
    end
  end

  describe "GET #new" do
    it "assigns a new news as @news" do
      get :new, params: {}, session: valid_session
      expect(assigns(:news)).to be_a_new(News)
    end
  end

  describe "GET #edit" do
    it "assigns the requested news as @news" do
      news = chapter.news.create! valid_attributes
      get :edit, params: {id: news.to_param}, session: valid_session
      expect(assigns(:news)).to eq(news)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new News" do
        expect {
          post :create, params: {news: valid_attributes}, session: valid_session
        }.to change(News, :count).by(1)
      end

      it "assigns a newly created news as @news" do
        post :create, params: {news: valid_attributes}, session: valid_session
        expect(assigns(:news)).to be_a(News)
        expect(assigns(:news)).to be_persisted
      end

      it "redirects to the news index" do
        post :create, params: {news: valid_attributes}, session: valid_session
        expect(response).to redirect_to(news_index_path)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved news as @news" do
        post :create, params: {news: invalid_attributes}, session: valid_session
        expect(assigns(:news)).to be_a_new(News)
      end

      it "re-renders the 'new' template" do
        post :create, params: {news: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        FactoryGirl.attributes_for(:news, title: "What's Up")
      }

      it "updates the requested news" do
        news = chapter.news.create! valid_attributes
        put :update, params: {id: news.to_param, news: new_attributes}, session: valid_session
        news.reload
        expect(news.valid?).to be_truthy
      end

      it "assigns the requested news as @news" do
        news = chapter.news.create! valid_attributes
        put :update, params: {id: news.to_param, news: valid_attributes}, session: valid_session
        expect(assigns(:news)).to eq(news)
      end

      it "redirects to the news index" do
        news = chapter.news.create! valid_attributes
        put :update, params: {id: news.to_param, news: valid_attributes}, session: valid_session
        expect(response).to redirect_to(news_index_path)
      end
    end

    context "with invalid params" do
      it "assigns the news as @news" do
        news = chapter.news.create! valid_attributes
        put :update, params: {id: news.to_param, news: invalid_attributes}, session: valid_session
        expect(assigns(:news)).to eq(news)
      end

      it "re-renders the 'edit' template" do
        news = chapter.news.create! valid_attributes
        put :update, params: {id: news.to_param, news: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested news" do
      news = chapter.news.create! valid_attributes
      expect {
        delete :destroy, params: {id: news.to_param}, session: valid_session
      }.to change(News, :count).by(-1)
    end

    it "redirects to the news list" do
      news = chapter.news.create! valid_attributes
      delete :destroy, params: {id: news.to_param}, session: valid_session
      expect(response).to redirect_to(news_index_path)
    end
  end
end
