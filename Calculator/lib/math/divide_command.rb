#provides a command for division
class DivideCommand < Command
  def execute_without_recording
    @calc.divide(@operand)
  end
end