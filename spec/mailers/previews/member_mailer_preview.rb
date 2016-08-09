# Preview all emails at http://localhost:3000/rails/mailers/member_mailer
class MemberMailerPreview < ActionMailer::Preview
  def welcome_email
    MemberMailer.welcome_email(Member.first)
  end
end
