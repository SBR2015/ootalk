require 'ootalk/instruction'

module OoTalk
  class Conditional < Instruction
    private

      def initialize(condition, thenbranch, elsebranch = nil)
        @condition = condition
        @thenbranch = thenbranch
        @elsebranch = elsebranch
      end

    public

      def to_s
        if @elsebranch == nil
          "if #{@condition.to_s}\n\t#{@thenbranch}\nend"
        else
          "if #{@condition.to_s}\n\t#{@thenbranch}\nelse\n\t#{@elsebranch}\nend"
        end
      end

      def exec
        if @condition.exec
          @thenbranch.exec
        elsif @elsebranch != nil
          @elsebranch.exec
        end
      end
  end
end
