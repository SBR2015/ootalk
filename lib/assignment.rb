require File.dirname(__FILE__) + '/instruction'
require File.dirname(__FILE__) + '/variable'
require File.dirname(__FILE__) + '/expression'

class Assignment < Instruction

  private

    def initialize()
      @target = Variable.new
      @source = Expression.new
    end
end
