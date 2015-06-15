module OoTalk
  class Variable

    attr_accessor :key 
    private

    def initialize(key)
      @@vars = {}
      @key = key
    end

    public

    def exec
      @@vars[@key]
    end

    def to_s
      "#{@key}"
    end
  end
end
