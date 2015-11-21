require 'spec_helper'
require 'ootalk/assignment'

describe 'Ootalk::Assignment' do
  it 'new' do
    ass1 = Ootalk::Assignment.new(Ootalk::Variable.new('b'), Ootalk::Add.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2)))
    expect(ass1).to_not be_nil
    ass2 = Ootalk::Assignment.new(Ootalk::Variable.new('b'), Ootalk::Times.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2)))
    expect(ass2).to_not be_nil
  end
  it 'exec' do
    ass1 = Ootalk::Assignment.new(Ootalk::Variable.new('b'), Ootalk::Add.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2)))
    expect(ass1.exec).to be 3
    ass2 = Ootalk::Assignment.new(Ootalk::Variable.new('b'), Ootalk::Times.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2)))
    expect(ass2.exec).to be 2
  end
  it 'to_s' do
    ass1 = Ootalk::Assignment.new(Ootalk::Variable.new('b'), Ootalk::Add.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2)))
    expect(ass1.to_s).to eq('b=(1+2)')
    ass2 = Ootalk::Assignment.new(Ootalk::Variable.new('b'), Ootalk::Times.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2)))
    expect(ass2.to_s).to eq('b=(1*2)')
  end
end
