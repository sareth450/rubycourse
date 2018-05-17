class CalcProg
    def check value
        if value.is_a?(Numeric)
            return 1
        else
            return -1
        end
    end
    def add(x,z)
        if self.check(x) + self.check(z) == 2
            return x+z
        else
            return nil
        end
    end
    def mul(x,z)
        if self.check(x) + self.check(z) == 2
            return x*z
        else
            return nil
        end
    end
    def sub(x,z)
        if self.check(x) + self.check(z) == 2
            return x-z
        else
            return nil
        end
    end
    def div(x,z)
        if self.check(x) + self.check(z) == 2
            return x/z
        else
            return nil
        end
    end
end