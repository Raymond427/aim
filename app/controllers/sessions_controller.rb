class SessionsController < ApplicationController
  before_action :chapter_schools, only: [:linkedin_signup]
  def new
  end

  def create
    member = Member.find_by(email: params[:session][:email].downcase)
    if member && member.authenticate(params[:session][:password])
      log_in member
      if session_chapter.nil?
        redirect_to member_chapter(member.chapter_id)
      else
        redirect_to session_chapter
      end
    else
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  def linkedin_signup
    linkedin_json = ActiveSupport::JSON.decode(env['omniauth.auth'].to_json)
    @linkedin_info = linkedin_json['info']
    @linkedin_info['image'] = linkedin_json['extra']['raw_info']['pictureUrls']['values'].first
    @member = Member.new
  end
end
