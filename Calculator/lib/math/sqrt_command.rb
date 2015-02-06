#provides a command for finding the square root
class SqrtCommand < Command
  def execute_without_recording
    @calc.sqrt
  end
end