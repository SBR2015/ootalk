#!/usr/bin/env ruby
require './program'
require './plus'
# Dir[File.expand_path('./lib', __FILE__) << '/*.rb'].each do |file|
#   require file
# end

# p = Program.new

a = Plus.new(1,2)
b = Plus.new(3,4)
c = Plus.new(a.exec,b.exec)
d = Plus.new(c,b)

puts "a = #{a.exec}"
puts "b = #{b.exec}"
puts "a + b = #{c.exec}"
puts "c = " + c.to_s
puts "d = " + d.to_s
