require 'yaml'
class Translator
  def self.run
    input = Input.new
    yield(input)
    @language_map = YAML.load(File.open("../config/config.#{input.language}.yaml").read)
    @language_map.each do |key, value|
      input.text.gsub!(/#{key}/, " #{value} ")
    end
    eval input.text
  end

  class Input
    attr_accessor :language, :text
  end
end

