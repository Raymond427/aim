class ApplicationMailer < ActionMailer::Base
  default from: 'noreply-aim@gmail.com'
  layout 'mailer'
  def email_image_tag(image, **options)
    attachments[image] = File.read(Rails.root.join("app/assets/images/#{image}"))
    image_tag attachments[image].url, **options
  end

  def welcome_email(member)
    @member = member
    @school_name = @member.chapter.school
    mail(to: @member.email, subject: 'Welcome to Advancing Innovative Minds!')
  end
end
