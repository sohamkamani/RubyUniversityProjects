class MultiplyCommand

  def initialize(operand)
    @operand = operand
  end
  
  def execute(calculator)
    calculator.multiply(@operand)
  end
  
end