require File.dirname(__FILE__) + '/boolean_op'

class Nand < BooleanOp
  private

    def initialize(left,right)
      super
      @operator = '!&&'
    end

  public

    def exec
      !(@left.exec && @right.exec)
    end

end
