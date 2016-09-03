module ChaptersHelper

  def set_session_chapter(id)
    session[:chapter_id] = id
  end

  def chapter_schools
    chapter_schools = Chapter.pluck(:school, :id)
  end

  def chapter_in_sessions?
    session[:chapter_id].present?
  end

  def session_chapter
    Chapter.find(session[:chapter_id]) if chapter_in_sessions?
  end

  def chapter_president
    session_chapter.members.where(executive_position: 'President').first
  end

  def redirect_if_no_chapter_in_session
    redirect_to root_url, alert: 'Please select a chapter first' unless chapter_in_sessions?
  end

  def redirect_if_not_webmaster
    redirect_to root_url, alert: 'You do not have permission to do that' unless member_is_webmaster?
  end
end
