#!/usr/bin/env ruby
require './translator'

Translator.run do |input|
  input.language = 'ja'
  input.text = 'aは3。もしaが3なら表示する"Three"を。'
  input
end

