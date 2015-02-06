#provides a command for finding the square root
class SqrtCommand
  def execute(calculator, history)
    history.push(self)
    calculator.sqrt
  end
end