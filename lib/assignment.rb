require './instruction'
require './variable'
require './expression'

class Assignment < Instruction

  private

    def initialize()
      @target = Variable.new
      @source = Expression.new
    end
end
