# puts "Hello world" # this is a comment
# puts "Hello Agian"
# puts "I like typing this"
# puts "This is fun."
# puts "Yay! printing."
# puts "I'd much rather you 'not'."
# # puts 'I "said"'
# puts "Roosters #{100 - 25 * 3 % 4}"
# puts "Is it true that 3 + 2 < 5 - 7?"
# puts 3 + 2 < 5 - 7
# print "how old ar you?"
# age = gets.chomp
# print "how tall are you"
# height = gets.chomp
# print "how much do you weigh?"
# weight = gets.chomp

# puts "so you are  #{age}, #{height}, and #{weight}"

# print "give me a number"
# num = gets.chomp.to_i

# first, second, third = ARGV

# puts "Your first variable is: #{first}"
# puts "Your second variable is: #{second}"
# # puts "Your third variable is: #{third}"
# def add (a,b)
#     puts "adding #{a} + #{b}"
#     return a+b
# end
# age = add(1,2)
# puts age    

# -------------if statement-------------

# people = 20
# cats = 30
# dogs = 15 

# if people < cats 
#     puts "Too many cats"
# end 

# if people > cats
#     puts "Not many cats"
# end

# if people < dogs
#     puts "the world is drooled on"
# end

# dogs += 5
# if people >= dogs
#     puts "People are greater than or equal to dogs."
#   end
  
#   if people <= dogs
#     puts "People are less than or equal to dogs."
#   end
  
  
#   if people == dogs
#     puts "People are dogs."
#   end

# people = 30
# cars = 40
# trucks = 15

# # --------------if-elsif-else in ruby-----------
# if cars > people
#   puts "We should take the cars."
# elsif cars < people
#   puts "We should not take the cars."
# else
#   puts "We can't decide."
# end

# # -----------array and for loops--------
# the_count = [1, 2, 3, 4, 5]
# fruits = ['apples', 'oranges', 'pears', 'apricots']
# change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# #tranditional style
# for number in the_count
#     puts "this is count #{number}"
# end    

# # more Ruby style - preferred along with the next one
# fruits.each do |fruit|
#     puts "A fruit of type #{fruit}"
# end    

# #like second way but in different syntax
# change.each {|i| puts "I got #{i}"}

# #build lists
# elements =[]
# (0..5).each do |i|
#     elements.push(i)
# end

# elements.each {|i| puts "Elements was #{i}"}

# # ----------------while loop------------
# i = 0 
# numbers = []

# while i < 6
#     puts "At the top i is #{i}"
#     numbers.push(i)

#     i += 1
#     puts "Numbers are now: ", numbers
#     puts "at the bottom i is #{i}"
# end    

# numbers.each {|num| puts num}




