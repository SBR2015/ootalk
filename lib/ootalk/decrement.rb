require 'ootalk/operator'
require 'ootalk/variable'

module OoTalk
  class Decrement < Operator

    def initialize(left)
    super
    end

    def exec
        OoTalk::Variable.name[@left.to_s] = OoTalk::Variable.name[@left.to_s] - 1
    end

    def to_s
      "#{@left.to_s}--"
    end
  end
end
