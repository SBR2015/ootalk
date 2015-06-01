#!/usr/bin/env ruby
require './program'
require './plus'
# Dir[File.expand_path('./lib', __FILE__) << '/*.rb'].each do |file|
#   require file
# end

# p = Program.new

a = Plus.new(1,2)
b = Plus.new(3,4)

c = Plus.new(a.execute,b.execute)

puts "a = #{a.execute}"
puts "b = #{b.execute}"
puts "a+b = #{c.execute}"
