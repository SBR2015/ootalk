require 'ootalk/operator'

module Ootalk
  class Nor < Operator

    private

    def initialize(left, right)
      super
      @operator = '!||'
    end
    
    public

    def exec
      ext_nor(@left.exec, @right.exec)
    end

  end
end
