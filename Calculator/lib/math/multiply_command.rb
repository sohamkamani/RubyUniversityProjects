#provides a command for multiplication
class MultiplyCommand < Command
  def execute_without_recording
    @calc.multiply(@operand)
  end
end