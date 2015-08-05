require 'spec_helper'
require 'ootalk/variable'

describe 'OoTalk::Variable' do
  let(:vars1) {OoTalk::Variable.new('x')}
  let(:vars2) {OoTalk::Variable.new('y')}
  let(:vars3) {OoTalk::Variable.new('z')}
  let(:vars4) {OoTalk::Variable.new('x')}

  it 'initialize' do
    expect(vars1).to_not be_nil
    expect(vars2).to_not be_nil
    expect(vars3).to_not be_nil
    expect(vars4).to_not be_nil
  end

  it 'to_s' do
    expect(vars1.to_s.length).to be >= 0
    expect(vars2.to_s.length).to be >= 0
    expect(vars3.to_s.length).to be >= 0
    expect(vars1.to_s).to eq 'x'
    expect(vars2.to_s).to eq 'y'
    expect(vars3.to_s).to eq 'z'
    expect(vars4.to_s).to eq vars1.to_s
    expect(vars4.to_s).not_to eq vars2.to_s
  end

  it 'exec' do
    expect(vars1.exec).to be_nil
    expect(vars2.exec).to be_nil
    expect(vars3.exec).to be_nil
    expect(vars4.exec).to eq vars1.exec
  end
  
  it 'setter' do
    ass1 = OoTalk::Assignment.new(OoTalk::Variable.new('b'), OoTalk::Constant.new(1))
    expect(ass1.exec).to be 1
  end
end
