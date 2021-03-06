class GuestMailer < ApplicationMailer
  default from: 'noreply-aim@gmail.com'
  layout 'mailer'

  def guest_email(guest)
    @guest = guest
    mail(to: guest.email, subject: "AIM | We've got your request!")
  end

  def pres_email(guest, president_email)
    @guest = guest
    mail(to: president_email, subject: "Guest Speaker Request!")
  end
end
