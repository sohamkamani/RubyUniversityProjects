class History

  attr_reader :command_arr
  
  def initialize
    @command_arr = []
  end
  
  def record(command)
    @command_arr.push(command)
  end

end