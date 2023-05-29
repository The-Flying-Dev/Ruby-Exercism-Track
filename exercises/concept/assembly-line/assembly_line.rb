class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour   
    
    if @speed.between?(1, 4)
      result = @speed.to_f * 221      
      result
    elsif @speed.between?(5, 8)
      result = (@speed.to_f * 221 * 90) / 100       
      result
    elsif @speed == 9
      result = (@speed.to_f * 221 * 80) / 100       
      result
    else  
      result = (@speed.to_f * 221 * 77) / 100
      result
    end
  end

  def working_items_per_minute  
    production_rate_per_hour.to_i / 60
  end

end
