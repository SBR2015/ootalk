require 'yaml'

module OoTalk
  class AbstractSyntaxLists
    def self.create(locale = :en)
      # 抽象文法のリストを取得
      load_file = File.expand_path('../../../config/locales', __FILE__) << "/as.#{locale}.yml"
      abstract_syntax = YAML.load_file(load_file)

      # 抽象文法リストの出力結果を生成
      i = 0
      options = []
      abstract_syntax[locale.to_s].map do |key, _value|
        this_class = {}
        this_class[:id] = i + 1
        this_class[:class_name] = key
        this_class[:name] = _value['name']
        this_class[:string] = _value['string']
        options.push(this_class)
        i += 1
      end
      puts options
      options
      
    end
  end
end
