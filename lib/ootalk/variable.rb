module Ootalk
  class Variable

    @@name = {}
    private

    def initialize(key)
      @key = key
    end

    public

    def exec
      @@name[@key]
    end

    def to_s
      @key.to_s
    end

     # getter
     def self.name
       return @@name
     end
    
     # setter
     def self.name=(name)
       @@name = name
     end

  end
end
