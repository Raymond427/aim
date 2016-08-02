module ChaptersHelper
  def chapter_schools
    chapter_schools = Chapter.pluck(:school, :id)
  end
end
