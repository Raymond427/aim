class ApplicationMailer < ActionMailer::Base
  default from: 'noreply-aim@gmail.com'
  layout 'mailer'

  def welcome_email(member)
    #attachments.inline['image.jpg'] = File.read('/path/to/image.jpg')
    @member = member
    @school_name = @member.chapter.school
    mail(to: @member.email, subject: 'Welcome to Advancing Innovative Minds!')
  end
end
