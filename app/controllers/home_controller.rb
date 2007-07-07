class HomeController < ApplicationController

  def list
    @specials = Special.current_specials
    @events = Event.current_events
  end
  
  def rewards
     render :template => "home/rewards", :layout => false
  end
end
