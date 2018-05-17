require_relative "1"
require "test/unit"

class Test1 < Test::Unit::TestCase
    def tests
        assert_equal("1  3\n2  1\n3  2\n", foo("a abc ab abc a a") )
    end
end
