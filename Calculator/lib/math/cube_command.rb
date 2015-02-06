#provides a command for cubing function
class CubeCommand

  def execute(calculator, history)
    history.push(self)
    calculator.cube
  end
end
