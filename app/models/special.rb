class Special < ActiveRecord::Base
  validates_presence_of :day
  validates_presence_of :lunch
  validates_presence_of :dinner
  
  def self.current_specials
    find(:all)
  end
end
