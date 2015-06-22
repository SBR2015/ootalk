require 'ootalk/instruction'

module OoTalk
  class Skip < Instruction

    private

    def initialize(comment)
      @comment = comment
    end

    public

    def exec
    end

    def to_s
      return "# #{@comment.to_s}"
    end

  end
end
