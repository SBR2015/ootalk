require File.dirname(__FILE__) + '/arithmeticOp'

class Add < ArithmeticOp

    def initialize(left,right)
      super
      @operator = '+'
    end

    def exec
      @left.exec + @right.exec
    end

end
