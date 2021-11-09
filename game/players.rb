require './questions'
class Players
    attr_reader :lives, :name

    def initialize(name)
        @name = name
        @lives = 3
    end    

    def losing_lives
        @lives -= 1
    end

    def no_lives
        @lives == 0
    end
    
    def new_question
        new_q = Question.new
        new_q.ask_question(name)
        print ">"
        @answer = $stdin.gets.chomp
        if !new_q.check_answer?(@answer.to_i)
            puts "Seriously? NO!"
            losing_lives
        else
            puts "YES! you are correct!"
        end    
    end    
end    
