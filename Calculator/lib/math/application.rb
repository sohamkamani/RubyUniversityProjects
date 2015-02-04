#starts the calculator
class Application

  def initialize
    @dispatcher = Dispatch.new(0)
  end

  def start
    print "$ "
    input = gets.chomp
    while input != 'exit' do
        puts @dispatcher.command(input)
        print "$ "
        input = gets.chomp
      end
    end


    def start_test
      input = Kernel.gets.chomp
      @dispatcher.command(input)
    end


  end
