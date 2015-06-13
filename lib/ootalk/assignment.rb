require 'ootalk/instruction'
require 'ootalk/variable'

module OoTalk
  class Assignment < Instruction
    private

      def initialize
        @target = Variable.new
      end
  end
end
