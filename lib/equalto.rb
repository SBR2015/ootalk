require File.dirname(__FILE__) + '/relationlOp'

class EqualTo < RelationlOp

    def initialize(left,right)
      super
      @operator = '=='
    end

    def exec
      @left.exec == @right.exec
    end

end
