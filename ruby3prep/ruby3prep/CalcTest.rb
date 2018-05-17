require 'minitest/autorun'
require 'minitest/spec'
require_relative 'CalcProg'

class CalcProgTest < Minitest::Test
    def test_check_param_type
        prog = CalcProg.new
        assert prog.check(123) == 1
        assert prog.check("test") == -1
    end
    def test_add
        prog = CalcProg.new
        assert prog.add(2,3) == 5
    end
    def test_sub
        prog = CalcProg.new
        assert prog.sub(4,3) == 1
    end
    def test_mul
        prog = CalcProg.new
        assert prog.mul(2,3) == 6
    end
    def test_div
        prog = CalcProg.new
        assert prog.div(6,3) == 2
    end
end

