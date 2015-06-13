#!/usr/bin/env ruby

require 'ootalk'

# $ bundle exec ruby locales_test.rb
puts OoTalk::AbstractSyntaxLists.create(:ja)
puts OoTalk::AbstractSyntaxLists.create(:cn)
puts OoTalk::AbstractSyntaxLists.create(:en)
