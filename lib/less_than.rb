require File.dirname(__FILE__) + '/RelationalOp'

class LessThan < RelationalOp

    def initialize(left, right)
      super
      @operator = '<'
    end

    def exec
      @left.exec < @right.exec
    end

end
