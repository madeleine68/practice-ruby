class GoodDog 
end

# sparky is an object or instance of class GoodDog
# This entire workflow of creating a new object or instance from a class is called instantiation,
# so we can also say that we've instantiated an object called sparky from the class GoodDog
sparky = GoodDog.new

# modules are another way to achieve polymorphism in Ruby.
#  A module is a collection of behaviors that is usable in other classes via mixins.
#   A module is "mixed in" to a class using the include method invocation.

module Speak
    def speak(sound) #speak method
        puts sound
    end
end

class HumanBeing
    include Speak
end

bob = HumanBeing.new
bob.speak("Hi")