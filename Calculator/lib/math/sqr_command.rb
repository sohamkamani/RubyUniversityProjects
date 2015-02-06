#provides a command for finding the square
class SqrCommand

  def execute(calculator, history)
    history.push(self)
    calculator.sqr
  end


end
