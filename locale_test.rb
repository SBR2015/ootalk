#!/usr/bin/env ruby

# $ bundle exec ruby locales_test.rb

# ライブラリの読み込み
require 'json'
require 'i18n'
I18n.load_path = Dir[File.expand_path('../config/locales', __FILE__) << '/*.yml']

# I18n.backend.load_translations

# 言語設定
I18n.locale = :ja

lang_json = {
  Plus: {
    id: 1,
    name: I18n.t('Plus.name'),
    string: I18n.t('Plus.string')
  },
  Minus: {
    id: 2,
    name: I18n.t('Minus.name'),
    string: I18n.t('Minus.string')
  }
}

# 実際には↓のように実装していく
# class_all_lists = "クラスリストをループで取得"
# lang_json = []
#
# class_all_lists.each do |c|
#   this_class = {}
#   this_class[:id] = "ループ回数の値"
#   this_class[:name] = I18n.t('c.name')
#   this_class[:string] = I18n.t('c.string')
#
#   lang_json.push(this_class)
# end

puts lang_json.to_json
