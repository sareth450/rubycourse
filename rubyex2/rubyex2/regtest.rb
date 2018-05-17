require_relative "reg"
require "test/unit"

        Te1 = String.new
        Te2 = String.new
        Ch = "xd12".scan(/(\p{Word}+)/).flatten
        Ch.each do |x|
           T1=x.gsub(/\d+/,"")
        end
        Ch2 = "13xd".scan(/(\p{Word}+)/).flatten
        Ch2.each do |x|
            T2=x.gsub(/\d+/,"")
         end
class TestReg < Test::Unit::TestCase
    def tests
        assert_equal("12","12xdxdxd".gsub(/\D/, '') )
        assert_equal("13","xdxdxd13".gsub(/\D/, '') )
        
        assert_equal("xd",T1)
        assert_equal("xd",T2)
    end
end