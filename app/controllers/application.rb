class ApplicationController < ActionController::Base
  include AuthenticatedSystem

  # If you want "remember me" functionality, add this before_filter to Application Controller
  before_filter :login_from_cookie
end