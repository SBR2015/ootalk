require File.dirname(__FILE__) + '/relationalop'

class NotEqual < RelationalOp

    def initialize(left, right)
      super
      @operator = '!='
    end

    def exec
      @left.exec != @right.exec
    end

end
