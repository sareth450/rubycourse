require_relative "group"
require_relative "book"
require 'set'

class Person
    @@perosnCount=0
    def initialize(name, number, book)
        @p_name = name
        @number = number
        @groups = Set.new
        @book = book
        @book.add_person self
        @@perosnCount+=1
    end

    def is_name_equal?(try)
        if @p_name.to_s.include? try.to_s
            self.write_all
        end
    end

    def is_in_group? gr
        @groups.each do |g|
            if g.instance_variable_get("@g_name").to_s.eql? gr.to_s
            return true
            end
        end
        return false
    end

    def add_to_group g
            if self.is_in_group? g
            else
                if @book.is_there_group? g
                    grp = @book.get_group g
                    @groups.add(grp)
                    grp.instance_variable_get("@people_list").add(self)
                else
                    xd = Group.new(g,@book)
                    xd.instance_variable_get("@people_list").add self
                    @groups.add(xd)
                    @book.instance_variable_get("@g_set").add xd
                end
            end
    end
    
    
    def to_s
         @p_name.to_s + ": " + @number.to_s + "\n"
    end

    def write_all
        res = @p_name.to_s + ": " + @number.to_s + "\n" + "Groups: " 
        @groups.each do |g|
            res = res + g.instance_variable_get("@g_name").to_s + ", "
        end
        res + "\n\n"
    end
end
