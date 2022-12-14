class MegaGreeter
    attr_accessor :names

    # Create the object
    def initialize(names = "World")
        @names = names
    end

    # Say hi to everybody
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.responds_to?("each")
            #@names is a list of some kind, iterate!
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end

        # say bye to everybody 
        def say_bye
            if @names.nil?puts "..."
            elsif @names.respond_to?("join")
                #Join the list elements with commas
                puts "Goodbye #{@names.join(", ")}.  Come back soon!"
            else
                puts "Goodbye #{@names}.  come back soon!"
            end
        end
    end

    if _FILE_ == $0
        mg = MegaGreeter.new
        mg.say_hi
        mg.say_bye

        # Change name to be "Dami"
        mg.names = "Dami"
        mg.say_hi
        mg.say_bye

        # Change the name to an array of names 
        mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
        mg.say_hi
        mg.say_bye
        
        # Change to nil
        mg.names = nil
        mg.say_hi
        mg.say_bye
    end
    
    puts "Hello"
puts "Enter Your Name"
puts "Enter A Number"
num1 = gets.chomp()
puts "Enter another number"
num2 = gets.chomp()

puts (num1 + num2)