require 'ootalk/operator'

module OoTalk
  class Loop
    def initialize(left, middle, right)
      @left = left
      @middle = middle
      @right = right
      @operator = 'L'
    end

    # @left.exec: 条件式(loop条件)
    # @middle.exec: Instruction#exec
    # @right.exec: 条件式(loop条件の制御)
    def exec
      while @left.exec do
        @right.exec
        @middle.exec
      end
    end
  end
end
