require "test/unit"
require 'rdoc'

Counter  = Hash.new



def foo input
    args = input.gsub(/\s+/m, ' ').gsub(/^\s+|\s+$/m, '').split(" ")
    args.each do |x|
        len = x.length.to_s
        if Counter.has_key?(len) 
            Counter[len] = Counter[len] + 1
        else
            Counter[len] = 1
        end
    end

    res = ""

    Counter.sort.map do |key,value|
        res = res + key + "  " + value.to_s + "\n"
    end

    return res
end

var = ""

while true
	char = gets
	if  char == nil
		break
	end
	var += char.to_s
end


#markup = RDoc::Markup::ToAnsi.new(markup = nil);
#markup.

puts foo(var)

__END__
=begin rdoc
= H1 Program will count lines
bold: end the input with Ctrl+D
#--
#input [-h] to open help
#++
=end


