require 'ootalk/operator'

module Ootalk
  class Nand < Operator
    private

    def initialize(left, right)
      super
      @operator = '!&&'
    end

    public

    def exec
      ext_nand(@left.exec, @right.exec)
    end
  end
end
