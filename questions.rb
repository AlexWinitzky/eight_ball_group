require_relative 'eight_ball_group'


class Questions
  def initialize
    @question = Answers.new
    prompt
    
  end

  def prompt
    puts "\nType a question to get an answer, or type QUIT to end the program"
    user_input
  end

  def user_input
    input = gets.strip.downcase
    add_new_answer if input == "add_answer"

    if input == "reset_answers"
      @question.reset_array
      puts "Answers have been reset."
      prompt
    end
    
    if input == "print_answers"
      puts @question.print_all_answers
      prompt
    end

    (input == 'quit') ? (puts "\nThanks for playing!"; exit): @question.pick_answer
  end

  def add_new_answer
    puts "Type the answer you would like to add, or type DONE to leave this mode"
    answer_to_add = gets.strip
    prompt if answer_to_add == "DONE"
    if @question.check_for_duplicate(answer_to_add)
      puts "I'm sorry I already know that answer"
      add_new_answer
    end
    @question.add_answer(answer_to_add)
    add_new_answer
  end
end

puts "Welcome to the Magic Eight Ball"
Questions.new
