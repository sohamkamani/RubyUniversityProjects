#Super class for all commands
class Command 

  def initialize(operand , history , calc)
    @operand = operand
    @history = history
    @calc = calc
  end

  def execute
    @history.push(self)
    execute_without_recording
  end

  def execute_without_recording
  end
  
end
