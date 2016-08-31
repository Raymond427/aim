class MailBlastersController < ApplicationController
  before_action :find_mail_blaster, only: [:show, :edit, :update, :destroy]

  # GET /mail_blasters
  # GET /mail_blasters.json
  def index
    @mail_blasters = session_chapter.mail_blasters.all
  end

  # GET /mail_blasters/1
  # GET /mail_blasters/1.json
  def show
  end

  # GET /mail_blasters/new
  def new
    @mail_blaster = MailBlaster.new
  end

  # GET /mail_blasters/1/edit
  def edit
  end

  # POST /mail_blasters
  # POST /mail_blasters.json
  def create
    @mail_blaster = session_chapter.mail_blasters.new(mail_blaster_params)
    @mail_blaster.to = session_chapter.members.all.pluck(:email)
    @mail_blaster.from = current_member.email
    respond_to do |format|
      if @mail_blaster.save
        format.html { redirect_to @mail_blaster, notice: 'Your message will be sent shortly' }
        format.json { render :show, status: :created, location: @mail_blaster }
        MailBlasterMailer.blast_email(@mail_blaster).deliver_now
      else
        format.html { render :new }
        format.json { render json: @mail_blaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mail_blasters/1
  # PATCH/PUT /mail_blasters/1.json
  def update
    # respond_to do |format|
    #   if @mail_blaster.update(mail_blaster_params)
    #     format.html { redirect_to @mail_blaster, notice: 'Mail blaster was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @mail_blaster }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @mail_blaster.errors, status: :unprocessable_entity }
    #   end
    # end
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
