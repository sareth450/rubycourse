
while true
    addedN=0;
    addedW=0;
    char = gets
	if  char == nil
		break
	end
    
    n1 = char.gsub(/\D/, '');
    if n1 != ""
        puts "Liczba: " + n1
    end



    w1 = char.scan(/(\p{Word}+)/).flatten
    if w1 != nil
        puts "Wyraz(y): "
        w1.each do |x| 
            x.gsub!(/\d+/,"")
            puts x 
        end
    end
    puts "\n"

end

