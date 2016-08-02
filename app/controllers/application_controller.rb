class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include ChaptersHelper
  def chapter_in_sessions?
    session[:chapter_id].present?
  end
  def session_chapter
    if chapter_in_sessions?
      Chapter.find(session[:chapter_id])
    else
      Chapter.find(params['member']['chapter_id'].to_i) # find chapter associated with new member
    end
  end
end
