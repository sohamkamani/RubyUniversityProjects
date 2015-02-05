class DivideCommand
  def initialize(operand)
    @operand = operand
  end
  def execute(calculator)
    calculator.divide(@operand)
  end
end