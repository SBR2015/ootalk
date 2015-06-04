require File.dirname(__FILE__) + '/arithmeticOp'

class Minus < ArithmeticOp

  private

    def initialize(left,right)
      super
      @operator = '-'
    end

  public

    def exec
      @left.exec - @right.exec
    end

end
