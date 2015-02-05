class RepeatCommand

  def initialize(opr,history)
    @opr = -opr
    @history = history
  end

  def execute(calc)
    result = nil
    while @opr != 0
      result = @history.command_arr[@opr].execute(calc)
      @opr += 1
    end
    return result
  end
end

