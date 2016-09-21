class MembersController < ApplicationController
  #before_action :redirect_if_not_webmaster, only: [:index]
  before_action :find_member, only: [:show, :edit, :update, :destroy]
  before_action :chapter_schools, only: [:index]
  before_action :redirect_if_no_chapter_in_session, only: [:executives]

  # GET /members
  # GET /members.json
  def index
    @members = Member.all
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  def after_signup
  end

  # GET /members/1/edit
  def edit
    redirect_to session_chapter, alert: 'You cannot edit other members!' unless current_member.present? && (@member.id == current_member.id || (member_can_edit? || member_can_create?))
  end

  def executives
    @executives = session_chapter.members.where(is_executive: true).sort_by {|member| Member::POSITIONS.index(member.executive_position)}
  end

  # POST /members
  # POST /members.json
  def create
    #TODO: Test the line below
    @chapter = session_chapter || member_params[:chapter_id]
    @member = member_chapter(@chapter).members.new(member_params)
    respond_to do |format|
      if @member.save
        format.html { redirect_to member_chapter(@member.chapter_id), notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
        log_in @member
        MemberMailer.welcome_email(@member).deliver_now
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_member
      @member = Member.find(params[:id])
      redirect_to session_chapter, alert: 'No member found' if @member.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role, :linkedinurl, :major, :graduation_date, :is_executive, :executive_position, :linkedin_photo_url, :chapter_id, :subscribed, :phone_number, :thumbnail )
    end
end
