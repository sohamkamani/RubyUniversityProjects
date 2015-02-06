#starts the calculator
class Application

  def initialize
    @calc = Calculator.new(0)
    @history = []
    @view = View.new(@calc)
    @parser = CalculatorParser.new
  end

  def start
    begin
      input = @view.get_input
      cmd = @parser.parse(input, @history, @calc)
      cmd.execute
      @view.refresh     
    end while 1
  end


  def start_test
    input = Kernel.gets.chomp
    cmd = @parser.parse(input)
  end


end
