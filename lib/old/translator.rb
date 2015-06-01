require 'yaml'
class Translator
  def self.run
    input = Input.new
    yield(input)
    filepath = File.expand_path("../../../config/old/config.#{input.language}.yaml", __FILE__)
    @language_map = YAML.load(File.open(filepath).read)
    @language_map.each do |key, value|
      input.text.gsub!(/#{key}/, " #{value} ")
    end
    puts input.text
    eval input.text
  end

  class Input
    attr_accessor :language, :text
  end
end
