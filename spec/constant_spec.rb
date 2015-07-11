require 'spec_helper'
require 'ootalk/constant'

describe 'OoTalk::Constant' do
  let(:cons1) {OoTalk::Constant.new(1)}
  let(:cons2) {OoTalk::Constant.new(true)}
  let(:cons3) {OoTalk::Constant.new(false)}
  let(:cons4) {OoTalk::Constant.new(0.999)}
  let(:cons5) {OoTalk::Constant.new(-9)}

  it 'initialize' do
    expect(cons1).to_not be_nil
    expect(cons2).to_not be_nil
    expect(cons3).to_not be_nil
    expect(cons4).to_not be_nil
    expect(cons5).to_not be_nil
  end

  it 'to_s' do
    expect(cons1.to_s.length).to be >= 0
    expect(cons2.to_s.length).to be >= 0
    expect(cons3.to_s.length).to be >= 0
    expect(cons4.to_s.length).to be >= 0
    expect(cons5.to_s.length).to be >= 0
  end

  it 'exec' do
    expect(cons1.exec).to be 1
    expect(cons2.exec).to be true
    expect(cons3.exec).to be false
    expect(cons4.exec).to be 0.999
    expect(cons5.exec).to be -9
  end
end