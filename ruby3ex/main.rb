$rand = 0


class Student
    attr_reader :ID
    @first_name
    @last_name
    @scores=[];
    def initialize(n, s)
        @first_name = n.to_s.capitalize
        @last_name = s.to_s.capitalize
        @ID=$rand
	$rand = $rand +1
        @scores = Array.new
    end
    def add_score(val)
       if val.is_a?(Numeric)
         @scores.push(val.to_f)
       else
        puts 'thats not a number'
        end
    end
    def first_name  
        return @first_name
    end
    def first_name= (n)
	@first_name = n.to_s
    end
    def id
        return @ID
    end
    def last_name
        return @last_name
    end
    def last_name= (n)
	@last_name = n.to_s
    end
    def scores
        return @scores
    end
    def has_scholarship?
        sum=0
        @scores.each do |x|
            sum = sum + x
        end
        if sum == 0 
            return false
        end
        if (sum / @scores.length) > 4.0
            return true
       else
            return false
        end
    end
    def to_s
        res=""
        res = res + @first_name.to_s + " " + @last_name.to_s + " "
        if @scores != nil
 	    res = res + "["
            @scores.each do |x|
                res= res + x.to_s + ", "
            end
	    res[-2]=']'
	end 
            if self.has_scholarship?
                res = res + "ma_stypendium"
            else
                res = res + "nie_ma_stypendium"
            end
            return res
    end
end

class University
    @students
    def initialize
        @students= Array.new
    end
    def size
        return @students.length
    end
    def append val
        @students.push(val)
        puts "done"
    end
    def [](val)
        @students.each do |x|
            if x.id.is_eql?
                puts " xsafsdfadsf" + x.class
                return x
            else
            end
        end
    end
    def to_s
	res= ""
	@students.each do |x|
	res = res + x.first_name.to_s + " " + x.last_name.to_s + "\n"
	end
	return res
    end	
end

student = Student.new("kk", "xd")
puts student
