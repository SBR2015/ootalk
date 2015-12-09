require 'ootalk/operator'

module Ootalk
  class Loop
    def initialize(left=nil, right=nil)
      @left = left
      @right = right
    end

    # @left.exec: 条件式(loop条件)
    # @right.exec: 実行文
    def exec
      while true do
        break unless @left.exec
        @right.exec
      end
    end
    def to_s
      "while true do\n  break unless #{@left}\n　#{@right}\nend"
    end
  end
end
