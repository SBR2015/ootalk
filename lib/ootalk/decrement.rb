require 'ootalk/operator'
require 'ootalk/variable'

module Ootalk
  class Decrement < Operator

    def initialize(left)
    super
    end

    def exec
        Ootalk::Variable.name[@left.to_s] = Ootalk::Variable.name[@left.to_s] - 1
    end

    def to_s
      "#{@left.to_s}--"
    end
  end
end
