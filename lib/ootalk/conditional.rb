require 'ootalk/instruction'

module Ootalk
  class Conditional < Instruction
    private

    def initialize(condition, thenbranch, elsebranch = nil)
      @condition = condition
      @thenbranch = thenbranch
      @elsebranch = elsebranch
    end

    public

    def to_s
      return "if #{@condition.to_s}\n\t#{@thenbranch}\nend" if @elsebranch.nil?
      return "if #{@condition.to_s}\n\t#{@thenbranch}\nelse\n\t#{@elsebranch}\nend"
    end

    def exec
      return @thenbranch.exec if @condition.exec
      return @elsebranch.exec unless @elsebranch.nil?
    end
  end
end
