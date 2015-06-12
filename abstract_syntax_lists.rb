#!/usr/bin/env ruby

# ライブラリの読み込み
require 'json'
require 'i18n'
I18n.load_path = Dir[File.expand_path('../config/locales', __FILE__) << '/*.yml']

class AbstractSyntaxLists

  def self.create(locale)
    # 言語設定
    I18n.locale = locale

    # 抽象文法のリストを取得
    abstract_syntax = YAML.load_file(File.dirname(__FILE__) +
                                    "/config/locales/as.#{I18n.locale.to_s}.yml")

    # 抽象文法のクラス一覧を取得
    class_all_lists = abstract_syntax[I18n.locale.to_s].map do |key, value|
      key
    end

    # 出力用の配列
    lang_json = []

    class_all_lists.each_with_index do |c, i|
      this_class = {}
      this_class[:id] = i + 1
      this_class[:name] = I18n.t("#{c}.name")
      this_class[:string] = I18n.t("#{c}.string")
      lang_json.push(this_class)
    end

    return lang_json

  end

end
