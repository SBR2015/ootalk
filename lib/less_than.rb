require File.dirname(__FILE__) + '/arithmeticOp'

class LessThan < ArithmeticOp

    def initialize(left, right)
      super
      @operator = '<'
    end

    def exec
      @left.exec < @right.exec
    end

end
