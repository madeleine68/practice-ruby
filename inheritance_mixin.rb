##interface inheritance

# Animal 1.Fish  2.Mammal
# Mammal 1.Cat   2.DOg
# Note: A common naming convention for Ruby is to use the "able" suffix on whatever verb describes the behavior that the module is modeling

module Swimmable  #because not all animals swim we create module to keep the code DRY
    def swim
      "I'm swimming!"
    end
  end
  
  class Animal; end
  
  class Fish < Animal
    include Swimmable         # mixing in Swimmable module
  end
  
  class Mammal < Animal
  end
  
  class Cat < Mammal
  end
  
  class Dog < Mammal
    include Swimmable         # mixing in Swimmable module
  end

  sparky = Dog.new
  neemo = Fish.new
  paws = Cat.new

  puts sparky.swim  #-->I'm swimming!
  puts neemo.swim  # -->I'm swimming!
#   paws.swim         # undefined method `swim' for #<Cat:0x00007fb6730f9d68> 

#   call classes in a module by appending the class name to the module name with two colons(::)
module Mammal
    class Dog
      def speak(sound)
        p "#{sound}"
      end
    end
  
    class Cat
      def say_name(name)
        p "#{name}"
      end
    end
  end

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')           # => "Arf!"
kitty.say_name('kitty')       # => "kitty"