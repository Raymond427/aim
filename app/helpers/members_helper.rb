module MembersHelper
  def member_chapter(id)
    Chapter.find(id)
  end

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

  def member_is_editor?
    if logged_in?
      current_member.role == 'editor'
    end
  end

  def member_in_chapter?
    if logged_in?
      current_member.chapter_id == session_chapter.id
    end
  end

  def member_has_any_permissions?
    if logged_in?
      member_is_webmaster? || ((member_is_admin? || member_is_editor?) && member_in_chapter?)
    end
  end

  def member_can_edit?
    if logged_in?
      if !(member_is_webmaster?)
        (member_is_admin? || member_is_editor?) && member_in_chapter?
      end
    end
  end

  def member_can_create?
    if logged_in?
      member_is_webmaster? || (member_is_admin? && member_in_chapter?)
    end
  end

  alias member_can_delete? member_can_create?

end
