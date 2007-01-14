class Event < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :date

  def self.current_events 
    t = Time.now-86400
    find(:all, :conditions => "date > '#{t.to_s(:db)}'", :order => "date asc" )
  end
  
end
