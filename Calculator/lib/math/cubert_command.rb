#provides a command for finding the cube root
class CubertCommand < Command
  def execute_without_recording
    @calc.cubert
  end
end