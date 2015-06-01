#!/usr/bin/env ruby
require './translator'

result = Translator.run do |input|
  input.language = 'ja'
  input.text = 'aは3。もしaが3なら表示する"Three"を。返す"Three"'
end
puts "#{result} XXXXXXXXX" 
