#provides an abs command
class AbsCommand
  def execute(calculator, history)
    history.push(self)
    calculator.abs
  end
end