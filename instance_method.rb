class GoodDog
    def initialize(name)
      @name = name
    end

    def speak
      "#{@name} says arf!"
    end
  end
  
# all objects of the same class have the same behaviors
  sparky = GoodDog.new("Sparky")
  puts sparky.speak

 # expose information about the state of the object using instance methods.
  fido = GoodDog.new("Fido")
  puts fido.speak