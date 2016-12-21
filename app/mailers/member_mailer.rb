class MemberMailer < ApplicationMailer
  def welcome_email(member)
    @member = member
    @school_name = @member.chapter.school
    mail(to: @member.email, subject: 'Welcome to Advancing Innovative Minds!')
  end
end
