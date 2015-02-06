#provides a command for multiplication
class MultiplyCommand

  def initialize(operand)
    @operand = operand
  end
  
  def execute(calculator, history)
    history.push(self)
    calculator.multiply(@operand)
  end
  
end