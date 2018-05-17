
class TextProg
    def initialize
    end
    def check(value)
        if value.is_a?(String)
                return 1
        else
                return -1
        end
    end
    def swap(value)
        if self.check(value) == 1
            res = value.tr('qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM', 
                'QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm')
            return res
        else
            return -1
        end
    end
    def reverse(a)
        if self.check(a) == 1
            res = a.reverse
            return res
        else
            return -1
        end
    end
end