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
end
