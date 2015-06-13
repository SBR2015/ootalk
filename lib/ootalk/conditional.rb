require 'ootalk/instruction'

module OoTalk
  class Conditional < Instruction
    private

      def initialize
        @thenbranch = Instruction.new
        @elsebranch = Instruction.new
      end
  end
end
