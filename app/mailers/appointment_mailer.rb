class AppointmentMailer < ApplicationMailer
  default from: 'noreply-aim@gmail.com'
  layout 'mailer'

  def appointment_email(appointment)
    #attachments.inline['logo.png'] = File.read('logo.png')
    #attachments.inline['home.jpg'] = File.read('home.jpg')
    @appointment = appointment
    mail(to: appointment.email, subject: "AIM | We're Processing your Appointment!")
  end

  def pres_email(appointment, president)
    #attachments.inline['logo.png'] = File.read('logo.png')
    @appointment = appointment
    @president = president
    mail(to: @president.email, subject: "AIM | Appointment Request!")
  end
end
