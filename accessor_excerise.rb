class MyCar
    attr_accessor :color
    attr_reader :year
    attr_reader :model

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

    def shut_down
        @current_speed = 0
        puts "you are not moving"
    end 

    def spray_paint(color)
        self.color =color 
        puts "your new #{color} paint"
    end
    
    def self.gas_mileage(gallon, miles)
        puts "#{miles/gallon} miles per gallon of gas"
    end    

    def to_s
        "My car is a #{color}, #{year}, #{model}"
    end
end   

MyCar.gas_mileage(13,251) # ==> 19 miles per gallon of gas
toyota = MyCar.new(2002, "black", "Camery")
puts toyota
toyota.speed_up(20)
toyota.current_speed
toyota.speed_up(20)
toyota.current_speed
toyota.brake(10)
toyota.current_speed
toyota.shut_down
toyota.current_speed

toyota.color = "red"
puts toyota.color
puts toyota.year

toyota.spray_paint ("white")
