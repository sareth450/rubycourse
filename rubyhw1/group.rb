require_relative "person"
require_relative "book"
require 'set'

class Group
    @@groupCount=0
    def initialize(name, book)
        @g_name = name
        @people_list = Set.new
        @@groupCount+=1
        @book = book 
       # @book.add_group(self)
    end

    def is_group? try
            return @g_name.to_s.eql? try.to_s
    end
    
    def to_s
        res = @g_name.to_s + ": \n"
        @people_list.each do |p|
            res = res + p.to_s + " \n"
        end
        res
    end
end