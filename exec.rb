#!/usr/bin/env ruby

# ライブラリの読み込み
Dir[File.expand_path('../lib', __FILE__) << '/*.rb'].each do |file|
  require file
end

# p = Program.new

# 定数の宣言
cons1 = Constant.new(1)
cons2 = Constant.new(2)
cons3 = Constant.new(3)

# 足す
a = Plus.new(cons1,cons2)
b = Plus.new(cons1,cons3)
c = Plus.new(a,b)
# d = Plus.new(c,b)

# 実行
puts "a = #{a.exec}"
puts "b = #{b.exec}"
puts "a + b = #{c.exec}"

# コンパイル
puts "a + b = #{c.to_s}"
# puts "d = " + d.to_s
