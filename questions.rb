require_relative 'eight_ball_group'

class Questions
  def initialize
    puts "Welcome to the Magic Eight Ball"
    welcome
  end

  def welcome
    puts "Type a question to get an answer, or type QUIT to end the program"
    user_input
  end

  def user_input
    @input = gets.strip
    if @input == 'QUIT'
      puts "\nThanks for playing!"
      exit
    else
      question = Answers.new
    end
  end
end

welcome = Questions.new
