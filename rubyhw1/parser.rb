require_relative "person"
require_relative "group"
require_relative "book"

require 'set'

class Parser
    def initialize
    end
    
    def parse(x,book)
        case x.to_i
        
            when 1
                puts "Input name or nick (split by \"-\" instead of spaces) , number, groups(optional)"

                input = gets

                args = input.gsub(/\s+/m, ' ').gsub(/^\s+|\s+$/m, '').split(" ")
                if args.length < 2 
                    puts "Too few arguments!"
                    return
                end
                n = args[0].split('-')

                name = n[0]
                j=0
                n.each do |a|
                    if j>=1
                        name = name + " " + a
                    end
                    j+=1
                end

                p = Person.new(name,args[1],book)

                i=0;

                args.each do |x|
                    if i>=2
                        p.add_to_group x
                    end
                    i+=1
                end

                p.add_to_group "Wszyscy"

            when 2
                puts "Who are you looking for?"
                name= gets.chomp
                puts book.is_person_included?(name)

            when 3
                puts "What group are you looking for?"
                name= gets.chomp
                res ="\n"
                book.instance_variable_get("@g_set").each do |g|
                    
                    if g.instance_variable_get("@g_name").to_s.casecmp(name.to_s) == 0 
                        res=res + g.instance_variable_get("@g_name").to_s + ": \n\n"
                        g.instance_variable_get("@people_list").each do |p|
                            res = res + p.to_s
                        end
                    end
                end 
                    puts res
            when 4

                book.instance_variable_get("@g_set").each do |g|
                        puts g.to_s
                        
                    end
                
            else
                puts "1. Input name, number, [groups]. \n" +
                "2. Input name"
            end
    end
end
