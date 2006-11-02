class HomeController < ApplicationController

  def list
    @specials = Special.current_specials
    @events = Event.current_events    
  end
end
