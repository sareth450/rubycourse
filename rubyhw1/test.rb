require_relative "person"
require_relative "group"
require_relative "book"
require_relative "parser"
require "test/unit"

B = Book.new

P = Person.new("aa bb" ,"123", B);
P.add_to_group "Wszyscy"
P.add_to_group("g1");


class TestBook < Test::Unit::TestCase
    def tests
        assert_equal(true, B.is_number_taken("123") )
        assert_equal(true, B.is_name_taken("aa bb") )
        assert_equal(true, B.is_there_group?("Wszyscy") )
        assert_equal(true, B.is_there_group?("g1") )
        assert_equal(false, B.is_there_group?("grp2") )
        assert_equal(false, B.is_name_taken("ccccc") )
    end
end

class TestPerson < Test::Unit::TestCase
    def tests
        assert_equal(true, P.is_in_group?("Wszyscy") )
        assert_equal(true, P.is_in_group?("g1") )
        assert_equal(false, P.is_in_group?("grp2") )
    end
end

