#provides a command for cubing function
class CubeCommand < Command

  def execute_without_recording
    @calc.cube
  end
end
