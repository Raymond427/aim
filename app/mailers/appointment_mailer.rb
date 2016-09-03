class AppointmentMailer < ApplicationMailer
  default from: 'noreply-aim@gmail.com'
  layout 'mailer'

  def appointment_email(appointment)
    #attachments.inline['image.jpg'] = File.read('/path/to/image.jpg')
    @appointment = appointment
    mail(to: appointment.email, subject: "We're Processing your Appointment!")
  end

  def pres_email(appointment, president)
    @appointment = appointment
    @president = president
    mail(to: @president.email, subject: "Appointment Request!")
  end
end
