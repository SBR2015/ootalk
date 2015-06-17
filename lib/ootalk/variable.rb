require 'active_support/all'

module OoTalk
  class Variable

    cattr_accessor :name
 
    @@name = {}
    private

    def initialize(key)
      @key = key
    end

    public

    # getter
    #def self.name
    #  return @@name
    #end

    # setter
    #def self.name=(name)
    # @@name = name
    #end

    def exec
      @@name[@key]
    end

    def to_s
      @key.to_s
    end
  end
end
