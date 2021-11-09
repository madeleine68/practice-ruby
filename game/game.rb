require './players'
class Game
    def initialize(name)
        @name = name 
        @player1 = Players.new("player1")
        @player2 = Players.new("player2")
    end

    def start
        puts "New Game. welcome #{@player1.name} and #{@player2.name}"  
        turn  
    end

    def results
        puts "player one: #{@player1.lives}/3 vs player two: #{@player2.lives}/3" 
    end
    
    def winner(player)
        puts "#{player.name} wins with the score of #{player.lives}/3"
        puts '++++++++GAME-OVER'
        exit(0)   
    end

    def check_score
        if @player1.no_lives
            winner(@player2)
        end    
        if @player2.no_lives
            winner(@player1)
        end
    end
    
    def turn 
        @player1.new_question
        check_score
        results
        @player2.new_question
        check_score
        results
        puts "------New Turn"
        turn
    end    
end  