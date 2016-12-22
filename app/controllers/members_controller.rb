class MembersController < ApplicationController
  before_action :find_member, only: [:show, :edit, :update, :destroy]
  before_action :chapter_schools, only: [:index]
  before_action :redirect_if_no_chapter_in_session, only: [:executives]

  def index
    @members = session_chapter.members.all
  end

  def show
  end

  def new
    @member = Member.new
  end

  def after_signup
  end

  def edit
    redirect_to session_chapter, alert: 'You cannot edit other members!' unless current_member.present? && (@member.id == current_member.id || (member_can_edit? || member_can_create?))
  end

  def executives
    @executives = session_chapter.members.where(is_executive: true).sort_by {|member| Member::POSITIONS.index(member.executive_position)}
  end

  def create
    @chapter = session_chapter || member_params[:chapter_id]
    @member = member_chapter(@chapter).members.new(member_params)
    respond_to do |format|
      if @member.save
        format.html { redirect_to after_signup_path, notice: 'Thanks for Joining! Welcome to Advancing Innovative Minds!' }
        format.json { render :show, status: :created, location: @member }
        log_in @member
        MemberMailer.welcome_email(@member).deliver_later
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to member_chapter(@member.chapter_id), notice: "We've Updated your Info" }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    member_deleting_themselves = @member.present? || (@member.id == current_member.id)
    @member.destroy
    respond_to do |format|
      if member_deleting_themselves
        log_out
        format.html { redirect_to session_chapter, notice: "We're Sorry to See You Go! Thanks for being apart of AIM" }
      else
        format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      end
      format.json { head :no_content }
    end
  end

  private
    def find_member
      @member = Member.find(params[:id])
      redirect_to session_chapter, alert: 'No member found' if @member.nil?
    end

    def member_params
      params.require(:member).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role, :linkedinurl, :major, :graduation_date, :is_executive, :executive_position, :linkedin_photo_url, :chapter_id, :subscribed, :phone_number, :thumbnail )
    end
end
