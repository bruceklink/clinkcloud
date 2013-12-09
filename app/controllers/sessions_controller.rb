require 'sinatra'
require 'omniauth'

class MyApplication < Sinatra::Base
  use Rack::Session::Cookie
  use OmniAuth::Strategies::Developer
end

class SessionsController < ApplicationController
  def create
    @user = User.request.env['omniauth.auth']
    self.current_user = @user
    redirect_to '/'
end
end