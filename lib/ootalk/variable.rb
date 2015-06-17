require 'active_support/all'

module OoTalk
  class Variable

    cattr_accessor :name
    attr_accessor :key
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

    # cattr_accessorを使うといらない
    # # getter
    # def self.name
    #   return @@name
    # end
    #
    # # setter
    # def self.name=(name)
    #   @@name = name
    # end

  end
end
