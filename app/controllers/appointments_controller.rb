class AppointmentsController < ApplicationController
  before_action :redirect_if_not_logged_in
  before_action :find_appointment, only: [:show, :destroy]

  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    respond_to do |format|
      if @appointment.save
        format.html { redirect_to session_chapter, notice: 'Thank You! We\'ll Schedule Your Session Soon' }
        format.json { render :show, status: :created, location: @appointment }
        AppointmentMailer.appointment_email(@appointment).deliver_later
        AppointmentMailer.pres_email(@appointment, chapter_president).deliver_later
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def find_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:first_name, :last_name, :email, :phone_number, :message)
    end
end
