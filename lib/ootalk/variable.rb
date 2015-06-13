module OoTalk
  class Variable
    @@vars = {}

    private

    def initialize(id)
      @left = id
    end

    public

    def exec
      @@vars[@left]
    end

    def to_s
      "#{@id}"
    end
  end
end
