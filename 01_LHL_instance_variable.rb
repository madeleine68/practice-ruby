class Person
    # attr_reader :name
    # attr_writer :name
    attr_accessor :name
        
    def initialize(name)
        @name = name
    end

    # def getter
    #     @name
    # end  

    # def setter=(name)
    #     @name = name
    # end

    def print_output
        "your name is #{@name}"
    end
end    

p = Person.new("L. Ron")
puts p.print_output
# puts p.getter
p.name = "new name"
# puts p.getter
puts p.print_output
