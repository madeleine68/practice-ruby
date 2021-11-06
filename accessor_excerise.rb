class MyCar
    attr_accessor :year, :color, :model

    def initialize (year,color,model)
        @year = year
        @color = color
        @model = model
        @current_speed = 0
    end

    def speed_up (number)
        @current_speed += number
        puts "accelerate #{number} km/h"
    end  

    
    def brake(number)
        @current_speed -= number
        puts "decelarate #{number} km/h"
    end 

    def current_speed 
        puts "your speed : #{@current_speed}"
    end 

    def shut_off
        @current_speed = 0
        puts "you are not moving"
    end 
end   

toyota = MyCar.new(2002, "black", "Camery")
toyota.speed_up(20)
toyota.current_speed
toyota.speed_up(20)
toyota.current_speed
toyota.brake(10)
toyota.current_speed
toyota.shut_off
toyota.current_speed
