class AppointmentsController < ApplicationController
  before_action :redirect_if_not_logged_in
  before_action :find_appointment, only: [:show, :destroy]

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
  end

  # POST /appointments
  # POST /appointments.json
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

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:first_name, :last_name, :email, :phone_number, :message)
    end
end
