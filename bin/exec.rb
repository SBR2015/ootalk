#!/usr/bin/env ruby

require 'ootalk'

# ライブラリの読み込み
Dir[File.expand_path('../lib', __FILE__) << '/*.rb'].each do |file|
  require file
end

# p = Program.new

# 定数の宣言
num1 = OoTalk::Constant.new(1)
num2 = OoTalk::Constant.new(2)
num3 = OoTalk::Constant.new(3)
num4 = OoTalk::Constant.new(4)
num5 = OoTalk::Constant.new(0.04)
num6 = OoTalk::Constant.new(0.2)
num8 = OoTalk::Constant.new(8)
num10 = OoTalk::Constant.new(10)

# 演算子の宣言
# operator = Array.new(100){Operator.new}
operator = []

# 足す
add1 = OoTalk::Add.new(num1, num2)
add2 = OoTalk::Add.new(num1, num3)
add3 = OoTalk::Add.new(add1, add2)

# 掛ける
times1 = OoTalk::Times.new(num2, num3)

# 引く
minus1 = OoTalk::Substract.new(num3, num1)

# 割る
divide1 = OoTalk::Divide.new(num4, num2)

# 余り
surplus1 = OoTalk::Surplus.new(num3, num2)

# べき乗
power1 = OoTalk::Power.new(num2, num3)

# 対数
logarithm1 = OoTalk::Logarithm.new(num10, num3)
logarithm2 = OoTalk::Logarithm.new(num5, num3)
logarithm3 = OoTalk::Logarithm.new(num2, num8)
logarithm4 = OoTalk::Logarithm.new(num10, num6)

# 等しくない
notequal1 = OoTalk::NotEqual.new(num1, num2)
notequal2 = OoTalk::NotEqual.new(num2, num2)

# 実行
operator.push "#{add1} = #{add1.exec}"
operator.push "#{add2} = #{add2.exec}"
operator.push "#{add3} = #{add3.exec}"
operator.push "#{times1} = #{times1.exec}"
operator.push "#{minus1} = #{minus1.exec}"
operator.push "#{divide1} = #{divide1.exec}"
operator.push "#{surplus1} = #{surplus1.exec}"
operator.push "#{power1} = #{power1.exec}"
operator.push "#{logarithm1} = #{logarithm1.exec}"
operator.push "#{logarithm2} = #{logarithm2.exec}"
operator.push "#{logarithm3} = #{logarithm3.exec}"
operator.push "#{logarithm4} = #{logarithm4.exec}"
operator.push "#{notequal1} = #{notequal1.exec}"
operator.push "#{notequal2} = #{notequal2.exec}"

operator.each do |o|
  puts o
end
