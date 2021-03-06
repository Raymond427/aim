class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_not_webmaster_or_admin, only: [:index, :show, :destroy]

  def index
    @guests = Guest.all
  end

  def show
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)

    respond_to do |format|
      if @guest.save
        format.html { redirect_to session_chapter, notice: "We got your message! We'll be in touch soon" }
        format.json { render :show, status: :created, location: @guest }
        GuestMailer.guest_email(@guest).deliver_later
        GuestMailer.pres_email(@guest, chapter_president.email).deliver_later
      else
        format.html { render :new }
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @guest.destroy
    respond_to do |format|
      format.html { redirect_to guests_path, notice: 'Guest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_guest
      @guest = Guest.find(params[:id])
    end

    def guest_params
      params.require(:guest).permit(:first_name, :last_name, :email, :phone_number, :date, :message)
    end
end
