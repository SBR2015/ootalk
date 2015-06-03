require './arithmeticOp'

class Plus < ArithmeticOp

  private

    def initialize(left,right)
      @left = left
      @right = right
    end

  public

    def exec
      @left.exec + @right.exec
    end

    def to_s
      "(#{@left}+#{@right})"
    end

end
