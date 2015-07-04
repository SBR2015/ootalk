require 'spec_helper'
require 'ootalk/power'

describe 'powers' do
  let(:powers1) {OoTalk::Power.new(OoTalk::Constant.new(1), OoTalk::Constant.new(2))}
  let(:powers2) {OoTalk::Power.new(OoTalk::Constant.new(2), OoTalk::Constant.new(3))}
  let(:powers3) {OoTalk::Power.new(OoTalk::Constant.new(3), OoTalk::Constant.new(0))}

  it 'initialize' do
    expect(powers1).to_not be_nil
    expect(powers2).to_not be_nil
    expect(powers3).to_not be_nil
  end

  it 'exec' do
    expect(powers1.exec).to be 1
    expect(powers2.exec).to be 8
    expect(powers3.exec).to be 1
  end
end