class MailBlasterMailer < ActionMailer::Base
  default from: 'noreply-aim@gmail.com'
  layout 'mailer'

  def blast_email(email)
    #attachments.inline['image.jpg'] = File.read('/path/to/image.jpg')
    @heading = email.heading
    @body = email.body
    mail(to: email.to, subject: email.subject)
  end
end
