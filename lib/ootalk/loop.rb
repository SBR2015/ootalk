require 'ootalk/operator'

module Ootalk
  class Loop
    def initialize(left=nil, middle=nil, right=nil)
      @left = left
      @middle = middle
      @right = right
    end

    # @left.exec: 条件式(loop条件)
    # @middle.exec: Instruction#exec
    # @right.exec: 条件式(loop条件の制御)
    def exec
      while true do
        break unless @left.exec
        @middle.exec
        @right.exec
      end
    end
    def to_s
      "while true do\n  break unless #{@left}\n  #{@middle}\n  #{@right}\nend"
    end
  end
end
