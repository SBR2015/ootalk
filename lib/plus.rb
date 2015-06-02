require './arithmeticOp'

class Plus < ArithmeticOp

  private

    def initialize(left,right)
      @left = left
      @right = right
    end

  public

    def exec
      @left + @right
    end

    def to_s
      "(#{@left}+#{@right})"
    end

end
