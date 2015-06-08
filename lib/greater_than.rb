require File.dirname(__FILE__) + '/relationalop'

class GreaterThan < RelationalOp

    def initialize(left, right)
      super
      @operator = '>'
    end

    def exec
      @left.exec > @right.exec
    end

end
