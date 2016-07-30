class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def session_chapter
    Chapter.find(session[:chapter_id])
  end

  def chapter_in_sessions?
    session[:chapter_id].present?
  end
end
