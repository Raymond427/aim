class ChaptersController < ApplicationController
  before_action :find_chapter, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_no_chapter_in_session, only: [:sponsorship, :calendar]
  before_action :redirect_if_not_webmaster, only: [:new, :edit, :create, :update, :destroy]

  def index
    if Chapter.count == 1
      redirect_to Chapter.first
    elsif chapter_in_sessions?
      redirect_to Chapter.find(session_chapter.id)
    else
      @chapters = Chapter.all
    end
  end

  def show
    set_session_chapter params[:id]
  end

  def new
    @chapter = Chapter.new
  end

  def edit
  end

  def create
    @chapter = Chapter.new(chapter_params)

    respond_to do |format|
      if @chapter.save
        format.html { redirect_to @chapter, notice: 'Chapter was successfully created.' }
        format.json { render :show, status: :created, location: @chapter }
      else
        format.html { render :new }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @chapter.update(chapter_params)
        format.html { redirect_to @chapter, notice: 'Chapter was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapter }
      else
        format.html { render :edit }
        format.json { render json: @chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  def sponsorship
  end

  def calendar
  end

  def destroy
    @chapter.destroy
    respond_to do |format|
      format.html { redirect_to chapters_url, notice: 'Chapter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def find_chapter
      @chapter = Chapter.find(params[:id])
    end

    def chapter_params
      params.require(:chapter).permit(:school, :logo, :email, :donation_snippet, :youtube_url, :facebook_url, :linkedin_url, :twitter_url, :instagram_url)
    end
end
