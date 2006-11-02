class Event < ActiveRecord::Base

  def self.current_events
    find(:all)
  end
  
end
