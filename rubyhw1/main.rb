require_relative "person"
require_relative "group"
require_relative "book"
require_relative "parser"

B = Book.new

def main 
    
    parser = Parser.new
    loop do
        puts "Choose an option:\n" +
             "0: Help me!.\n" +
             "1: Add record.\n" +
             "2: Search by name.\n" +
             "3: Search by group.\n" +
             "4: Write all groups content.\n" +
             "5: Exit."
            choice = gets
            if choice.to_i == 5
                break
            else 
                parser.parse(choice,B)
            end   
    end
end

main
