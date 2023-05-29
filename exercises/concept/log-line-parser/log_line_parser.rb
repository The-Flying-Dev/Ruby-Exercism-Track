class LogLineParser
  def initialize(line)
    @line = line
    @log_message = @line.split(": ")[1].strip
    @level = @line.split(':')[0].gsub(/[\[\]]/, '').downcase
  end

  def message
    #raise 'Please implement the LogLineParser#message method'    
    @log_message
  end
   


  def log_level
    #raise 'Please implement the LogLineParser#log_level method'    
    @level
  end

  def reformat
    #raise 'Please implement the LogLineParser#reformat method'
    "#{message} (#{log_level})"
  end
  
end