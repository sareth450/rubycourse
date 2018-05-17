def sum(array1, array2, sp1, sp2, carry, res)
    if sp1*(-1) > array1.length and sp2*(-1) > array2.length
        return res
    end
    if sp1*(-1) > array1.length
         sum(array1, array2, sp1, sp2-1, 0,"#{array2[sp2]}"+res)
    elsif sp2*(-1) > array1.length
        sum(array1, array2, sp1-1, sp2, 0,"#{array1[sp1]}"+res)
    else 
        accres = array1[sp1].to_i + array2[sp2].to_i + carry
        first, last = accres.divmod(10)
        carry = last
        res = "#{last}" + res
        sum(array1, array2, sp1-1, sp2-1, carry, res)
    end
end


a1 = ["1","9","4"]
a2 = ["2","6","9"]

res = ' '

sum(a1,a2,-1,-1,0,res)

puts res
