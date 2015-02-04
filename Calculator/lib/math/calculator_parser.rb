# to parse inputs and return a command

class CalculatorParser

  def parse(command_string)


    @opr = command_string.split
    @opr[1] = @opr[1].to_f

    if @opr[0] == "add"
      command = AddCommand.new(@opr[1])
    elsif @opr[0] == "subtract"
      command = SubtractCommand.new(@opr[1])
    end

    return command
  end


end
