require 'ootalk/operator'
require 'ootalk/variable'

module OoTalk
  class Decrement < Operator

    def initialize(left, right)
    super
      @operator = '-='
    end

    def exec
        OoTalk::Variable.name[@left.to_s] = OoTalk::Variable.name[@left.to_s] - @right.exec
    end

  end
end
