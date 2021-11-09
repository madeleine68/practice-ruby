class Question
    attr_reader  :a, :b, :answer
    def initialize
        num = []
        (1..20).each do |i|
            num.push(i)
        end
        @a = num.sample
        @b = num.sample
        @answer = @a + @b
    end    
    def ask_question(name)
        puts "#{name}: what does #{@a} plus #{@b} equals?"
    end 
        
    def check_answer?(input)
        @answer == input
    end               
end 




