require_relative 'CalcProg'
require_relative 'TextProg'

args=[]

def main args
calc = CalcProg.new
text = TextProg.new
i=0
while i < args.length
    if args[i]=="--add" 
        puts calc.add(args[i+1].to_i,args[i+2].to_i)
        i=i+2
    elsif args[i]=="--mul"
        puts calc.mul(args[i+1].to_i,args[i+2].to_i)
        i=i+2
    elsif args[i]=="--sub"
        puts calc.sub(args[i+1].to_i,args[i+2].to_i)
        i=i+2
    elsif args[i]=="--div"
        puts calc.div(args[i+1].to_i,args[i+2].to_i)
        i=i+2
    elsif args[i]=="--swapcase"
        puts text.swap(args[i+1].to_s)
        i=i+1
    elsif args[i]=="--reverse"
        puts text.reverse(args[i+1].to_s)
        i=i+1
    else
        i=i+1
    end
end
end

main(ARGV)