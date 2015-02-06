#repeats past few commands based on the operand and history provided
class RepeatCommand

  def initialize(opr, history, calculator)
    @opr = opr
    @history = history
    @calc = calculator
  end

  def execute
    result = nil
    counter = -@opr
    @opr.to_i.times{
      result = @history[counter].execute_without_recording
      counter += 1
    }
    return result
  end
end
