class Application

  def initialize
    @calci = CalculatorParser.new
  end

  def start
    print "$ "
    input = gets.chomp
    while input != 'exit' do
        puts @calci.command(input)
        print "$ "
        input = gets.chomp
      end
    end


    def start_test
      input = Kernel.gets.chomp
      @calci.command(input)
    end


  end
