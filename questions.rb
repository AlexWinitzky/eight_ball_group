class Questions

  def initialize
    user_input
  end

  def welcome
    puts "Welcome to the Magic Eight Ball"
    puts "Type a question to get an answer, or type QUIT to end the program"
  end

  def user_input
    welcome
    @input = gets.strip
    if @input == 'QUIT'
      exit
    else
    end

  end
end

