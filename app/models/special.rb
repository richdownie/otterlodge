class Special < ActiveRecord::Base
  
  
  def self.current_specials
    find(:all)
  end
end
