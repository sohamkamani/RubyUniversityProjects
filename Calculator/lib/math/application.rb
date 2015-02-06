#starts the calculator
class Application

  def initialize
    @calc = Calculator.new(0)
    @history = []
    @view = View.new(@calc)
  end

  def start
    parser = CalculatorParser.new
    input = @view.get_input
    begin
      cmd = parser.parse(input, @history, @calc)
      cmd.execute
      @view.refresh
      input = @view.get_input
    end while input != 'exit'
  end


  def start_test
    parser = CalculatorParser.new
    input = Kernel.gets.chomp
    cmd = parser.parse(input)
  end


end
