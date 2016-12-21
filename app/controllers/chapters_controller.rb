# This is the controller for the chapters.
# When a user makes a request that requires the chapters to complete, the request goes to this controller, then the controller orchestrates the action using the model, and views

class ChaptersController < ApplicationController
  before_action :find_chapter, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_no_chapter_in_session, only: [:sponsorship, :calendar]
  before_action :redirect_if_not_webmaster, only: [:new, :edit, :create, :update, :destroy]

  # GET /chapters
  # GET /chapters.json
  def index
    if Chapter.count == 1
      redirect_to Chapter.first
    elsif chapter_in_sessions?
      redirect_to Chapter.find(session_chapter.id)
    else
      @chapters = Chapter.all
    end
  end

  # GET /chapters/1
  # GET /chapters/1.json
  def show
    set_session_chapter params[:id]
  end

  # GET /chapters/new
  def new
    @chapter = Chapter.new
  end

  # GET /chapters/1/edit
  def edit
  end

  # POST /chapters
  # POST /chapters.json
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

  # PATCH/PUT /chapters/1
  # PATCH/PUT /chapters/1.json
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

  # DELETE /chapters/1
  # DELETE /chapters/1.json
  def destroy
    @chapter.destroy
    respond_to do |format|
      format.html { redirect_to chapters_url, notice: 'Chapter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_chapter
      @chapter = Chapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapter_params
      params.require(:chapter).permit(:school, :logo, :email, :donation_snippet, :youtube_url, :facebook_url, :linkedin_url, :twitter_url, :instagram_url)
    end
end
