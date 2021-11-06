# class GoodDog
#     def initialize(name)
#       @name = name
#     end
#     # If we want to access the object's name, which is stored in the @name instance variable,
#     #  we have to create a method that will return the name.     
#     def get_name
#       @name
#     end
  
#     def speak
#       "#{@name} says arf!"
#     end
#   end
  
#   sparky = GoodDog.new("Sparky")
#   puts sparky.speak
#   puts sparky.get_name

class GoodDog
    def initialize(name)
      @name = name
    end
#   --------Getter--------
    def get_name  # def name
      @name       #  @name
    end           # end
#   -------Setter--------
    def set_name=(name) # def name=(n)
      @name = name         # @name = n
    end                 # end
  
    def speak
      "#{@name} says arf!"
    end
  end
  
  sparky = GoodDog.new("Sparky")
  puts sparky.speak
  puts sparky.get_name    # puts sparky.name 
  sparky.set_name = "Spartacus"  # sparky.name = "Spartacus"
  puts sparky.get_name    # puts sparky.name 


# /* instead of writing getter and setter method Ruby has a built-in way to create those 
attr_accessor :name

# what if we only want getter? we use 
attr_reader # method ,it only allows u to retrive the instance variable

# what if we only want setter? we use 
attr_writer 

# all of attr_* takes a Symbol as paramater, if there are more states use:
attr_accessor :name, :height :weight

# With getter and setter methods, we have a way to expose and change an object's state. 

@: instance variable
w/o @: instance method

# try to call instance method insatead of instead variable

def speak
    "#{name} says arf!"
  end
  
  class GoodDog
    attr_accessor :name, :height, :weight
    # This one line of code gives us six getter/setter instance methods:
    #  name, name=, height, height=, weight, weight=. 
    #  It also gives us three instance variables: @name, @height, @weight
    def initialize(n, h, w)
      @name = n
      @height = h
      @weight = w
    end
  
    def speak
      "#{name} says arf!"
    end
    # To disambiguate from creating a local variable, we need to use self.name= 
    # to let Ruby know that we're calling a method.
    def change_info(n, h, w)
        self.name = n
        self.height = h
        self.weight = w
    end
  
    def info
      "#{name} weighs #{weight} and is #{height} tall."
    end
  end


