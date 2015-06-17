require 'ootalk/instruction'
require 'ootalk/variable'

module OoTalk
  class Assignment < Instruction
    private

    def initialize(target = nil, source = nil)
      @target = target
      @source = source
      @op = '='
    end

    public

    def exec
      OoTalk::Variable.name[@target.to_s] = @source.exec
    end

    def to_s
      @target.to_s
    end
  end
end
