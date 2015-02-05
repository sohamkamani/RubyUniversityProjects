# to parse inputs and return a command

class CalculatorParser

  def parse(command_string,history)


    @opr = command_string.split
    @opr[1] = @opr[1].to_f

    if @opr[0] == "add"
      command = AddCommand.new(@opr[1])
      history.push(command)
    elsif @opr[0] == "subtract"
      command = SubtractCommand.new(@opr[1])
      history.push(command)
    elsif @opr[0] == "neg"
      command = NegCommand.new
      history.push(command)
    elsif @opr[0] == "multiply"
      command = MultiplyCommand.new(@opr[1])
      history.push(command)
    elsif @opr[0] == "divide"
      command = DivideCommand.new(@opr[1])
      history.push(command)
    elsif @opr[0] == "cubert"
      command = CubertCommand.new
      history.push(command)
    elsif @opr[0] == "sqr"
      command = SqrCommand.new
      history.push(command)
    elsif @opr[0] == "sqrt"
      command = SqrtCommand.new
      history.push(command)
    elsif @opr[0] == "abs"
      command = AbsCommand.new
      history.push(command)
    elsif @opr[0] == "cube"
      command = CubeCommand.new
      history.push(command)
    elsif @opr[0] == "repeat"
      command = RepeatCommand.new(@opr[1],history)
    elsif @opr[0] =="cancel"
      command = CancelCommand.new
    end

    return command
  end


end
