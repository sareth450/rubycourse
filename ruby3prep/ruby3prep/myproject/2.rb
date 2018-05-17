#class 
class Odbiorca 
        @tab = [1,2,3];
        #to_s function writes out a message
        def to_s
                "wywołano metodę 'to_s'"
        end
        #inspect function, Writes out a message
        def inspect
            "wywołano metodę 'inspct'"
        end
        #Initializes new instance
        #
        # @param value [Array] value to be set as @tab
        # @return [Array] @tab
        def initialize(value)
            puts "wywołano metodę 'initizlize()"
            @tab=value
        end
        #Returns tab, instance variable, writes a message
        #
        # @return [Array] @tab
        def komunikat
            puts "wywołano metodę instancyjna komunikat()"
            puts @tab
        end
        #Returns tab, instance variable, writes a message
        #
        # @return [Array] @tab
        def self.komunikat
            puts "Wywołano metode klasowa komunikat"
            puts @tab
        end
        #Loads value into instance variable
        #
        #p@param value [Array] array to be set as @tab
        # @return [Array] @tab
        def load_tab(value)
            @tab = value
        end
        #Returns tab, instance variable
        #
        # @return [Array] @tab
        def read_tab
            @tab 
        end
        # Creates arrayof n size with numbers form 1 to m and p
        #
        # @param n [Number] size of tab
        # @param m [Number] range of elements
        # @return [Array]  returns number of even numbers in tab
        def utworz_tablice(n, m)
            Array.new(n).map {|x| x =(1+rand(m))}
        end

        # Creates arrayof n size with numbers form 1 to m and puts it into @tab
        #
        # @param n [Number] size of tab
        # @param m [Number] range of elements
        # @return [Array]  returns number of even numbers in tab
        def utworz_tablice!(n, m)
            @tab = Array.new(n).map {|x| x =(1+rand(m))}
        end
        
        # Counts number of even numbers in tab
        #
        # @return [Number]  returns number of even numbers in tab
        def ilosc_liczb_parzystych()
            @tab.lazy.select{ |liczba| (liczba%2).zero? }.count
        end
    end
     ###########
    Odbiorca.komunikat
    Odbiorca.send('komunikat')
    odbiorca = Odbiorca.new([4,5,6])
    odbiorca.komunikat
    odbiorca.send('komunikat')
    puts odbiorca
    puts odbiorca.utworz_tablice(5,5)
    puts "\n"
    puts odbiorca.utworz_tablice!(5,5)
    puts "\n"
    puts odbiorca.ilosc_liczb_parzystych()
    p odbiorca


