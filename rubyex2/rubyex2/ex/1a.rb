require "test/unit"

Counter  = Hash.new

#input 



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

puts foo <<WORD_LIST
aaa
a
aa
a
aaa
aa
WORD_LIST