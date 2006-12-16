class Event < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :date

  def self.current_events 
    find(:all, :conditions => "date > '#{Time.now.to_s(:db)}'", :order => "date asc" )
  end
  
end
