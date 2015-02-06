#provides a command for division
class DivideCommand
  def initialize(operand)
    @operand = operand
  end
  def execute(calculator, history)
    history.push(self)
    calculator.divide(@operand)
  end
end