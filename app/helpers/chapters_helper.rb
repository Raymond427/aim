module ChaptersHelper
  def chapter_schools
    chapter_schools = Chapter.pluck(:school, :id)
  end
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
