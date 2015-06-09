#!/usr/bin/env ruby

# ライブラリの読み込み
Dir[File.expand_path('../lib', __FILE__) << '/*.rb'].each do |file|
  require file
end

# p = Program.new

# 定数の宣言
num1 = Constant.new(1)
num2 = Constant.new(2)
num3 = Constant.new(3)
num4 = Constant.new(4)
num10 = Constant.new(10)

# 演算子の宣言
# operator = Array.new(100){Operator.new}
operator = Array.new

# 足す
add1 = Plus.new(num1, num2)
add2 = Plus.new(num1, num3)
add3 = Plus.new(add1, add2)

# 掛ける
times1 = Times.new(num2, num3)

# 引く
minus1 = Minus.new(num3, num1)

# 割る
divide1 = Divide.new(num4, num2)

# 余り
surplus1 = Surplus.new(num3, num2)

# べき乗
power1 = Power.new(num2, num3)

# 対数
logarithm1 = Logarithm.new(num10, num3)

#等しくない
notequal1 = NotEqual.new(num1, num2)
notequal2 = NotEqual.new(num2, num2)

# 実行
operator.push "#{add1.to_s} = #{add1.exec}"
operator.push "#{add2.to_s} = #{add2.exec}"
operator.push "#{add3.to_s} = #{add3.exec}"
operator.push "#{times1.to_s} = #{times1.exec}"
operator.push "#{minus1.to_s} = #{minus1.exec}"
operator.push "#{divide1.to_s} = #{divide1.exec}"
operator.push "#{surplus1.to_s} = #{surplus1.exec}"
operator.push "#{power1.to_s} = #{power1.exec}"
operator.push "#{logarithm1.to_s} = #{logarithm1.exec}"
operator.push "#{notequal1.to_s} = #{notequal1.exec}"
operator.push "#{notequal2.to_s} = #{notequal2.exec}"

operator.each do |o|
  puts o
end
