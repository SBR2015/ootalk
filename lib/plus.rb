require './arithmeticOp'

class Plus < ArithmeticOp

  private
    def initialize(left,right)
      @left = left
      @right = right
    end

  public
    def execute
      @left + @right
    end

end
