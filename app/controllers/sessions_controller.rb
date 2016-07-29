class SessionsController < ApplicationController
  def native_signup
  end
  def linkedin_signup
    @linkedin_info = ActiveSupport::JSON.decode(env['omniauth.auth'].to_json)['info']
    @member = Member.new
    @chapter_schools = Chapter.pluck(:school, :id)
  end
end
