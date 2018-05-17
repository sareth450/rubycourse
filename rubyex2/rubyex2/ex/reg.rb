

def foo input 
    w1 = input.scan(/(([()&]*\p{Word}+)[()&]*\s*[=]\s*([()&]*\p{Word}+)[()&]*)/)
    if w1 != nil
        bigres=""
        w1.each do |x| 
            res = ""
            x.each do |n|
                res=""
                lol = n.gsub(/[0-9A-Za-z\s=]/, '')
                value = lol.unpack('H*')
                #puts value
                swap = '%' + value[0]
                beka = n.gsub(/[^0-9A-Za-z\s*=]/, swap)
                res =  res + beka
            end
            bigres = bigres + "&" + res
        end
        bigres
    end
end

#while true
#	inpt = gets
#	if  inpt == nil
#		break
#	end
#	var = var + " " + inpt.to_s
#end

puts foo <<WORD_LIST
x = 1 ala ma kota
y=(kowalski & nowak)
WORD_LIST

