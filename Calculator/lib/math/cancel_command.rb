#provides a cancellation command
class CancelCommand

  def execute(calculator, history)
    history.push(self)
    calculator.cancel
  end

end


