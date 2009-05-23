class ApplicationController < ActionController::Base

  include AuthenticatedSystem

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # If you want "remember me" functionality, add this before_filter to Application Controller
  before_filter :login_from_cookie

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
end
