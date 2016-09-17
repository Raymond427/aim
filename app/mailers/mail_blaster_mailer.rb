class MailBlasterMailer < ActionMailer::Base
  default from: 'noreply-aim@gmail.com'
  layout 'mailer'

  def blast_email(email)
    #attachments.inline['logo.png'] = File.read('logo.png')
    #attachments.inline['home.jpg'] = File.read('home.jpg')
    @heading = email.heading
    @body = email.body
    mail(to: email.to, subject: email.subject)
  end
end
