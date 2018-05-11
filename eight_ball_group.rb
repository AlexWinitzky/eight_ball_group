class Answers

    attr_accessor :possible_answers, :possible_answers_backup
  def initialize
    @possible_answers = [
      "It is certain", 
      "As I see it, yes", 
      "Reply hazy, try again", 
      "Don't count on it", 
      "It is decidedly so", 
      "Most likely", 
      "Ask again later", 
      "My reply is no", 
      "Without a doubt", 
      "Outlook good", 
      "Better not tell you now", 
      "My sources say no", 
      "Yes definitely", 
      "Yes", 
      "Cannot predict now", 
      "Outlook not so good", 
      "You may rely on it", 
      "Signs point to yes", 
      "Concentrate and ask again",
      "Very doubtful"
    ]
    @possible_answers_backup = @possible_answers.map(&:clone)
  end

  def add_answer(new_answer)
    @possible_answers << new_answer
  end

  def reset_array
    @possible_answers = @possible_answers_backup.map(&:clone)
  end

  def check_for_duplicate(word_to_check)
    @possible_answers.include? word_to_check   
  end

  def pick_answer
    answer = @possible_answers.sample
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "The Magic 8 Ball says: #{answer}"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    restart = Questions.new
    restart.prompt
  end

  def print_all_answers
    @possible_answers
  end

end