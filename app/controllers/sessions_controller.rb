class SessionsController < ApplicationController
  def create
    raise env['omniauth.auth'].to_json
  end
end
