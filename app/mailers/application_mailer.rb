class ApplicationMailer < ActionMailer::Base
  default from: 'noreply-aim@gmail.com'
  layout 'mailer'

  def welcome_email(member)
    #attachments.inline['image.jpg'] = File.read('/path/to/image.jpg')
    @member = member
    @url  = 'http://example.com/login'
    mail(to: @member.email, subject: 'Welcome to My Awesome Site')
  end
end
