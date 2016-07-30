class SessionsController < ApplicationController
  def new
  end

  def create
    member = Member.find_by(email: params[:session][:email].downcase)
    if member && member.authenticate(params[:session][:password])
      log_in user
      session_chapter.nil? ? redirect_to Chapter.find_by(id: member.chapter_id) : redirect_to session_chapter
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
    @linkedin_info = ActiveSupport::JSON.decode(env['omniauth.auth'].to_json)['info']
    @member = Member.new
    @chapter_schools = Chapter.pluck(:school, :id)
  end
end
