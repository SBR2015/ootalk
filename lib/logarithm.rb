require File.dirname(__FILE__) + '/arithmeticOp'

class Logarithm < ArithmeticOp

  private

    def initialize(left,right)
      super
      @operator = 'log'
    end

  public

    def exec
      Math.log(@right.exec) / Math.log(@left.exec)
    end

    def to_s
      # どっちで書くかは要検討
      "#{@operator}#{@left}(#{@right})"
      # @operator.to_s + @left.to_s + "(" + @right.to_s + ")"
    end

end
