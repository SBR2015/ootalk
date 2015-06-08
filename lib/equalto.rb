require File.dirname(__FILE__) + '/relationalOp'

class EqualTo < RelationalOp

    def initialize(left,right)
      super
      @operator = '=='
    end

    def exec
      @left.exec == @right.exec
    end

end
