require_relative "person"
require_relative "group"
require 'set'

class Book
    def initialize
        @g_set = Set.new
        @p_set = Set.new
    end

    

     def is_number_taken num
        @p_set.each do |p|
            if p.instance_variable_get("@number") ==  num
                return true
            end
        end   
        return false 
    end

    def is_person_included?(try)
        res="\n"
        @p_set.each do |p|
            if p.instance_variable_get("@p_name").to_s.eql? try.to_s                
                res = res+p.write_all
            end
        end
        res
    end

    def is_name_taken name
        @p_set.each do |p|
            if p.instance_variable_get("@p_name") ==  name
                return true
            end
        end   
        return false 
    end

    def is_there_group? try
        @g_set.each do |g|
        if g.instance_variable_get("@g_name").to_s.eql? try.to_s
                return true
            end
        end   
        return false 
    end  

    def get_group g
        @g_set.each do |gr|
            if gr.instance_variable_get("@g_name").to_s.eql? g.to_s
                    return gr
                end
            end   
            return nil
        end

     def add_person p
        if p.instance_of? Person
             if is_number_taken p.instance_variable_get("@number") 
                puts "This number is already taken!"
             elsif is_name_taken p.instance_variable_get("@p_name")
                puts "I already exist!"
             else
                 @p_set.add(p)
             end
         else
             puts "Object you're trying to add is not a person!\n"
        end
     end

    def write_everyone
        @p_set.each do |p|
            puts p.to_s + "\n"
        end
    end

    def write_all
        @p_set.each do |p|
            p.write_all
        end
    end

end