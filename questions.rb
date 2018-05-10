require_relative 'eight_ball_group'

class Questions
  def initialize
    prompt
  end

  def prompt
    puts "\nType a question to get an answer, or type QUIT to end the program"
    user_input
  end

  def user_input
    input = gets.strip.downcase
    if input == 'quit'
      puts "\nThanks for playing!"
      exit
    else
      question = Answers.new
    end
  end
end

puts "Welcome to the Magic Eight Ball"
Questions.new
