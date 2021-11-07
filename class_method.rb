# Class methods are methods we can call directly on the class itself, 
# without having to instantiate any objects.
# When defining a class method, we prepend the method name with the reserved word self.

# def self.what_am_i
#     "i am a GoodDog class"
# end    
# we use the class name GoodDog followed by the method name, without even having to instantiate any objects
# GoodDog.what_am_i

# we can create variables for an entire class that are appropriately named class variables.
#  Class variables are created using two @ symbols like so: @@

class GoodDog
    # calss variable initialize with 0
    @@number_of_dogs = 0
  
    #instance method
    def initialize # constructor -- get call every time we instantiate a new obj via new method.
      @@number_of_dogs += 1 # incremented by 1
    end
  
    #class method 
    def self.total_number_of_dogs
      @@number_of_dogs #just return the value of the class variable
    end
  end
  
  puts GoodDog.total_number_of_dogs   # => 0
  
  dog1 = GoodDog.new
  dog2 = GoodDog.new
  
  puts GoodDog.total_number_of_dogs   # => 2

#  to create constants use upper case letter at the begining of the variable name

class GoodDog
    DOG_YEAR = 7
    attr_accessor :name, :age

    #used setter method to initialize @name and @age given by attr_accessor
    def initialize (n,a)
        self.name = n
        self.age = a * DOG_YEAR
    end

    # overriding the default to_s that comes with Ruby.
    def to_s
        "This dog's name is #{name} and it is #{age} in dog years."
    end    
end    

sparky = GoodDog.new("Sparky", 4)
puts sparky.age  # ==> 28

# p that's very similar to puts, except it doesn't call to_s on its argument; it calls another built-in Ruby instance method called inspect.
#  The inspect method is very helpful for debugging purposes
puts sparky #the to_s method is called automatically on the object when we use it with puts
p sparky