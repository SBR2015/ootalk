# ライブラリの読み込み
require 'i18n'
require 'yaml'

module OoTalk
  class AbstractSyntaxLists
    def self.create(locale = :en)
      # 言語設定
      I18n.load_path = Dir[File.expand_path('../../../config/locales', __FILE__) << '/*.yml']
      I18n.available_locales = [:en, :ja, :cn]
      I18n.enforce_available_locales = true
      I18n.default_locale = :en

      I18n.locale = locale

      # 抽象文法のリストを取得
      abstract_syntax = YAML.load_file(File.dirname(__FILE__) +
                                      "/../../config/locales/as.#{I18n.locale}.yml")

      # 抽象文法のクラス一覧を取得
      class_all_lists = abstract_syntax[I18n.locale.to_s].map do |key, _value|
        key
      end

      # 出力用の配列
      options = []

      class_all_lists.each_with_index do |c, i|
        this_class = {}
        this_class[:id] = i + 1
        this_class[:class_name] = c
        this_class[:name] = I18n.t("#{c}.name")
        this_class[:string] = I18n.t("#{c}.string")
        options.push(this_class)
      end

      options
    end
  end
end
