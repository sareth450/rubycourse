require 'minitest/autorun'
require 'minitest/spec'
require_relative 'TextProg'

class TextProgTest < Minitest::Test
    def test_check_param_type
        prog = TextProg.new
        assert_equal(prog.check(123),-1)
        assert_equal(prog.check("test"),1)
    end
    def test_swap_test
        prog = TextProg.new
        assert_equal("aB",prog.swap("Ab"))
    end
    def test_reverse_test
        prog = TextProg.new
        assert_equal("bA",prog.reverse("Ab"))
    end
end

