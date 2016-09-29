class MailBlastersController < ApplicationController
  before_action :find_mail_blaster, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_not_webmaster_admin_or_editor, only: [:index, :show, :new, :create]
  before_action :redirect_if_not_webmaster_or_admin, only: [:destroy]

  # GET /mail_blasters
  # GET /mail_blasters.json
  def index
    @mail_blasters = session_chapter.mail_blasters.all.reverse
  end

  # GET /mail_blasters/1
  # GET /mail_blasters/1.json
  def show
  end

  # GET /mail_blasters/new
  def new
    @mail_blaster = MailBlaster.new
  end

  # POST /mail_blasters
  # POST /mail_blasters.json
  def create
    @mail_blaster = session_chapter.mail_blasters.new(mail_blaster_params)
    @mail_blaster.to = session_chapter.members.where(subscribed: true).pluck(:email)
    @mail_blaster.from = current_member.email
    respond_to do |format|
      if @mail_blaster.save
        format.html { redirect_to mail_blasters_path, notice: 'Your message will be sent shortly' }
        format.json { render :show, status: :created, location: @mail_blaster }
        MailBlasterMailer.blast_email(@mail_blaster).deliver_later
      else
        format.html { render :new }
        format.json { render json: @mail_blaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_blasters/1
  # DELETE /mail_blasters/1.json
  def destroy
    @mail_blaster.destroy
    respond_to do |format|
      format.html { redirect_to mail_blasters_url, notice: 'Mail blaster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_mail_blaster
      @mail_blaster = MailBlaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mail_blaster_params
      params.require(:mail_blaster).permit(:to, :subject, :from, :heading, :body)
    end
end
