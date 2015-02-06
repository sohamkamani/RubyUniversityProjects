#starts the calculator
class Application

  def initialize
    @calc = Calculator.new(0)
    @history = []

  end

  def start

    parser = CalculatorParser.new

    print "$ "
    input = gets.chomp
    
    begin
      cmd = parser.parse(input, @history, @calc)
      puts cmd.execute
      print "$ "
      input = gets.chomp

    end while input != 'exit'
  end


  def start_test
    parser = CalculatorParser.new
    input = Kernel.gets.chomp
    cmd = parser.parse(input)
  end


end
