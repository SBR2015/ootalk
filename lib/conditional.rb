require './instruction'
require './expression'


class Conditional < Instruction

  private

    def initialize()
      @thenbranch = Instruction.new
      @elsebranch = Instruction.new
      @test = Expression.new
    end
end
