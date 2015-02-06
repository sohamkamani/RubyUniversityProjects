#provides a command for negation
class NegCommand

  def execute(calculator, history)
    history.push(self)
    calculator.neg
  end

end
