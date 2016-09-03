class GuestMailer < ApplicationMailer
  default from: 'noreply-aim@gmail.com'
  layout 'mailer'

  def guest_email(guest)
    #attachments.inline['image.jpg'] = File.read('/path/to/image.jpg')
    @guest = guest
    mail(to: guest.email, subject: "We've got your request!")
  end

  def pres_email(guest, president_email)
    @guest = guest
    mail(to: president_email, subject: "Guest Speaker Request!")
  end
end
