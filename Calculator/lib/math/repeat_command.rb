#repeats past few commands based on the operand and history provided
class RepeatCommand

  def initialize(opr)
    @opr = -opr
  end

  def execute(calc, history)
    result = nil
    while @opr != 0
      result = history[@opr].execute(calc, [])
      @opr += 1
    end
    return result
  end
end
