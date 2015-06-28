require 'spec_helper'
require 'ootalk/assignment'

describe 'OoTalk::Assignment' do
  it 'new' do
    ass1 = OoTalk::Assignment.new(OoTalk::Variable.new('b'), OoTalk::Add.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2)))
    expect(ass1).to_not be_nil
    ass2 = OoTalk::Assignment.new(OoTalk::Variable.new('b'), OoTalk::Times.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2)))
    expect(ass2).to_not be_nil
  end
  it 'exec' do
    ass1 = OoTalk::Assignment.new(OoTalk::Variable.new('b'), OoTalk::Add.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2)))
    expect(ass1.exec).to be 3
    ass2 = OoTalk::Assignment.new(OoTalk::Variable.new('b'), OoTalk::Times.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2)))
    expect(ass2.exec).to be 2
  end
  it 'to_s' do
    ass1 = OoTalk::Assignment.new(OoTalk::Variable.new('b'), OoTalk::Add.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2)))
    expect(ass1.to_s).to eq('b=(1+2)')
    ass2 = OoTalk::Assignment.new(OoTalk::Variable.new('b'), OoTalk::Times.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2)))
    expect(ass2.to_s).to eq('b=(1*2)')
  end
end
