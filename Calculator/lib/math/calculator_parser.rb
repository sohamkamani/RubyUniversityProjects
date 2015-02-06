# to parse inputs and return a command

class CalculatorParser
  def parse(command_string, history, calc)
    @opr = command_string.split
    @opr[1] = @opr[1].to_f
    if @opr[0] == "add"
      command = AddCommand.new(@opr[1], history , calc)
    elsif @opr[0] == "subtract"
      command = SubtractCommand.new(@opr[1], history, calc)
    elsif @opr[0] == "neg"
      command = NegCommand.new
    elsif @opr[0] == "multiply"
      command = MultiplyCommand.new(@opr[1], history, calc)
    elsif @opr[0] == "divide"
      command = DivideCommand.new(@opr[1], history, calc)
    elsif @opr[0] == "cubert"
      command = CubertCommand.new(@opr[1], history, calc)
    elsif @opr[0] == "sqr"
      command = SqrCommand.new(@opr[1], history, calc)
    elsif @opr[0] == "sqrt"
      command = SqrtCommand.new(@opr[1], history, calc)
    elsif @opr[0] == "abs"
      command = AbsCommand.new(@opr[1], history, calc)
    elsif @opr[0] == "cube"
      command = CubeCommand.new(@opr[1], history, calc)
    elsif @opr[0] == "repeat"
      command = RepeatCommand.new(@opr[1], history, calc)
    elsif @opr[0] =="cancel"
      command = CancelCommand.new(@opr[1], history, calc)
    elsif @opr[0] =="exit"
      command = ExitCommand.new(@opr[1], history, calc)
    else
      command = NilCommand.new(@opr[1], history, calc)
    end
  end
end
