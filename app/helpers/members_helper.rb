module MembersHelper
  def member_chapter(id)
    Chapter.find(id)
  end
  def member_in_chapter?
    if logged_in?
      current_member.chapter_id == session_chapter.id
    end
  end

  def member_can_edit?
    if logged_in?
      if current_member.role == 'webmaster'
        true
      else
        (current_member.role == 'admin' || current_member.role == 'editor') && member_in_chapter?
      end
    end
  end

  def member_can_create?
    if logged_in?
      current_member.role == 'webmaster' || (current_member.role == 'admin' && member_in_chapter?)
    end
  end

  alias member_can_delete? member_can_create?

  def member_is_webmaster?
    if logged_in?
      current_member.role == 'webmaster'
    end
  end

  def member_is_admin?
    if logged_in?
      current_member.role == 'admin'
    end
  end
end
