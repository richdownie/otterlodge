module HomeHelper

  def closephotos
   page.visual_effect :BlindUp, 'photos'
  end
  
  def closeevent
   page.visual_effect :BlindUp, 'event' 
  end

  def closemenu
   page.visual_effect :BlindUp, 'menu' 
  end

  def closesports
   page.visual_effect :BlindUp, 'sports' 
  end
end
