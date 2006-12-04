class Event < ActiveRecord::Base

  def self.current_events
    find(:all, :order => "date asc")
  end
  
end
