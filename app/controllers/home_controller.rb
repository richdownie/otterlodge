class HomeController < ApplicationController

  # caches_page :list
  caches_action :list
  
  def list
    @specials = Special.current_specials
    @events = Event.current_events
  end
end
