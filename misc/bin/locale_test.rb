#!/usr/bin/env ruby

require 'ootalk'

# $ bundle exec ruby locales_test.rb
puts Ootalk::AbstractSyntaxLists.create(:ja)
puts Ootalk::AbstractSyntaxLists.create(:cn)
puts Ootalk::AbstractSyntaxLists.create(:en)
