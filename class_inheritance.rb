# The class that is inheriting behavior is called the subclass and the class it inherits from
# is called the superclass.

class Animal  #superclass
    def speak 
        "Hello"
    end
end

class GoodDog < Animal #subcalss
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new

puts sparky.speak
puts paws.speak

class Animal
    def speak
      "Hello!"
    end
end
  
  class GoodDog < Animal
    def speak
    #note : Ruby checks the object's class first for the method before it looks in the superclass.
    # we use super to invoke the speak method from the superclass,
    # Animal, and then we extend the functionality by appending some text to the return value.
      super + " from GoodDog class"
    end
  end
  
  sparky = GoodDog.new
  sparky.speak        # => "Hello! from GoodDog class"