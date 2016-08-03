class SessionsController < ApplicationController
  before_action :chapter_schools, only: [:linkedin_signup]
  def new
  end

  def create
    member = Member.find_by(email: params[:session][:email].downcase)
    redirect_to root_url if member.nil?
    byebug
    if member && member.authenticate(params[:session][:password])
      log_in member
      # TODO session_chapter.nil? ? redirect_to Chapter.find_by(id: member.chapter_id) : redirect_to session_chapter
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
