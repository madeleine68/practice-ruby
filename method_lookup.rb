module Speak
    def speak(sound)
        puts "${sound}"
    end
end

class GoodDog
    include Speak
end

class HumanBeing 
    include Speak
end

puts "------GoodDog ancestors---"
puts GoodDog.ancestors

# ---GoodDog ancestors---
# GoodDog
# Speak
# Object
# Kernel
# BasicObject

puts "-----HUmanBeing ancestors ------"
puts HumanBeing.ancestors

# ---HumanBeing ancestors---
# HumanBeing
# Speak
# Object
# Kernel
# BasicObject
