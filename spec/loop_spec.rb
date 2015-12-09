require 'spec_helper'
require 'ootalk/loop'
require 'ootalk/constant'
require 'ootalk/less_than'
require 'ootalk/add'
require 'ootalk/subtract'
require 'ootalk/variable'
require 'ootalk/assignment'
require 'ootalk/compound'

describe 'Loop' do
  it 'new' do
    lp = Ootalk::Loop.new
    expect(lp).to_not be_nil
  end

=begin
下記の機能を実行するテスト
 a = 0
 i = 0
 while (i < 3) do
   a += 10
   i += 1
 end
 a => 30
=end
  it 'exec' do
    cons3 = Ootalk::Constant.new(3)
    cons10 = Ootalk::Constant.new(10)

    # i = 0
    val_i = Ootalk::Variable.new('i')
    cons0 = Ootalk::Constant.new(0)
    Ootalk::Assignment.new(val_i, cons0).exec
    # i + 1
    cons1 = Ootalk::Constant.new(1)
    incr = Ootalk::Add.new(val_i, cons1)
    # i = i + 1
    assign = Ootalk::Assignment.new(val_i, incr)
    # i < 3
    less_than = Ootalk::LessThan.new(val_i, cons3)
    # a = 0
    val_a = Ootalk::Variable.new('a')
    Ootalk::Assignment.new(val_a, cons0).exec
    # a = a + 10
    add = Ootalk::Add.new(val_a, cons10)
    results = Ootalk::Assignment.new(val_a, add)
    lp_com = Ootalk::Compound.new(results,assign)
    lp = Ootalk::Loop.new(less_than, lp_com)
    lp.exec
    expect(val_a.exec).to eq 30
  end

=begin
下記の機能のto_s関数のテスト
 i = 0
 while (i < 3) do
   a += 10
   i += 1
 end
 a => 30
=end
  it 'to_s' do
    cons3 = Ootalk::Constant.new(3)
    cons10 = Ootalk::Constant.new(10)

    # i = 0
    val_i = Ootalk::Variable.new('i')
    cons0 = Ootalk::Constant.new(0)
    Ootalk::Assignment.new(val_i, cons0).exec
    # i + 1
    cons1 = Ootalk::Constant.new(1)
    incr = Ootalk::Add.new(val_i, cons1)
    # i = i + 1
    assign = Ootalk::Assignment.new(val_i, incr)
    # i < 3
    less_than = Ootalk::LessThan.new(val_i, cons3)
    # a = 0
    val_a = Ootalk::Variable.new('a')
    Ootalk::Assignment.new(val_a, cons0).exec
    # a = a + 10
    add = Ootalk::Add.new(val_a, cons10)
    results = Ootalk::Assignment.new(val_a, add)
    lp_com = Ootalk::Compound.new(results,assign)
    lp = Ootalk::Loop.new(less_than,lp_com)
    expect(lp.to_s).to eq "while true do\n  break unless (i<3)\n  {a=(a+10); i=(i+1)}\nend"
  end
end