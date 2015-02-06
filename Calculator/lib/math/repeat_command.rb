#repeats past few commands based on the operand and history provided
class RepeatCommand < Command


  def execute
    result = nil
    counter = -@operand
    @operand.to_i.times{
      result = @history[counter].execute_without_recording
      counter += 1
    }
    return result
  end
end
