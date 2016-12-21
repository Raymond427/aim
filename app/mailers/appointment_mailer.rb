class AppointmentMailer < ApplicationMailer
  default from: 'noreply-aim@gmail.com'
  layout 'mailer'

  def appointment_email(appointment)
    @appointment = appointment
    mail(to: appointment.email, subject: "AIM | We're Processing your Appointment!")
  end

  def pres_email(appointment, president)
    @appointment = appointment
    @president = president
    mail(to: @president.email, subject: "AIM | Appointment Request!")
  end
end
