class NewsController < ApplicationController
  before_action :find_news, only: [:show, :edit, :update, :destroy]
  before_action :chapter_in_sessions?, only: [:create, :index]
  before_action :redirect_if_no_chapter_in_session
  before_action :redirect_if_not_webmaster_admin_or_editor, except: [:index, :show]

  def index
    @news = session_chapter.news.all.sort_by{|news| news.date.to_date}.reverse
  end

  def show
  end

  def new
    @news = News.new
  end

  def edit
  end

  def create
    @news = session_chapter.news.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to news_index_path, notice: 'News was successfully created.' }
        format.json { render :show, status: :created, location: @news }
      else
        format.html { render :new }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to news_index_path, notice: 'News was successfully updated.' }
        format.json { render :show, status: :ok, location: @news }
      else
        format.html { render :edit }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to news_index_path, notice: 'News was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def find_news
      @news = News.find(params[:id])
    end
    
    def news_params
      params.require(:news).permit(:title, :date, :mediatype, :youtube_url, :thumbnail, :description)
    end
end
