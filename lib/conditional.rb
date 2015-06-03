require File.dirname(__FILE__) + '/instruction'
require File.dirname(__FILE__) + '/expression'


class Conditional < Instruction

  private

    def initialize()
      @thenbranch = Instruction.new
      @elsebranch = Instruction.new
      @test = Expression.new
    end
end
