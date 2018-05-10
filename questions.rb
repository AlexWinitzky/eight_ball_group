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
    (input == 'quit') ? (puts "\nThanks for playing!"; exit): question = Answers.new
  end
end

puts "Welcome to the Magic Eight Ball"
Questions.new
