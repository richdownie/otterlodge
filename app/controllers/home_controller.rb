class HomeController < ApplicationController

  def list
    @specials = Special.current_specials
    @events = Event.current_events
    page.visual_effect :grow, 'bears'
    
  end
end
