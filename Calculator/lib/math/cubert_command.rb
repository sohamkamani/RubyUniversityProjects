#provides a command for finding the cube root
class CubertCommand
  def execute(calculator, history)
    history.push(self)
    calculator.cubert
  end
end