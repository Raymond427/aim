class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def welcome_email(member)
    @member = member
    @url  = 'http://example.com/login'
    mail(to: @member.email, subject: 'Welcome to My Awesome Site')
  end
end
