class Time
  def shorthand 
    self.strftime("%m/%d/%Y - %H:%M%p")
  end

  def dateonly 
    self.strftime("%m/%d/%Y")
  end
end