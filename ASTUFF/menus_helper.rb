module MenusHelper
  def closemap
   page.visual_effect :DropOut, 'map' 
  end
  
  def closephotos
   page.visual_effect :DropOut, 'photos'
  end

  def closestaff
   page.visual_effect :Squish, 'staff' 
  end

  def closeevents
   page.visual_effect :Puff, 'events' 
  end
end
