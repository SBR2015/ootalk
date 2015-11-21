require 'ootalk/operator'

module Ootalk
  class Times < Operator
    def initialize(left, right)
      super
      @operator = '*'
    end

    def exec
      @left.exec * @right.exec
    end
  end
end
