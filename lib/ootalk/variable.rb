module OoTalk
  class Variable
    
    attr_accessor :key, :val 
    @@name = {}
    private

    def initialize(key)
      @key = key
    end

    public

    def exec
      @@name[@key]
    end
    
    def self.name
       return @@name 
    end

    def value=(val)
        self.name[@key] = val      
    end

    def to_s
      @key.to_s
    end
  end
end
