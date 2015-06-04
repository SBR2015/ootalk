require File.dirname(__FILE__) + '/arithmeticOp'

class Surplus < ArithmeticOp

  private

    def initialize(left,right)
      super
      @operator = '%'
    end

  public

    def exec
      @left.exec % @right.exec
    end

end
