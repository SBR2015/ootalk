require './arithmeticOp'

class Plus < ArithmeticOp

  private

    def initialize(left,right)
      super
      @operator = '+'
    end

  public

    def exec
      @left.exec + @right.exec
    end

end
