require 'ootalk/instruction'
require 'ootalk/variable'

module Ootalk
  class Assignment < Instruction
    private

    def initialize(target = nil, source = nil)
      @target = target
      @source = source
      @op = '='
    end

    public

    def exec
      Ootalk::Variable.name[@target.to_s] = @source.exec
    end

    def to_s
      "#{@target.to_s}#{@op}#{@source.to_s}"
    end
  end
end
