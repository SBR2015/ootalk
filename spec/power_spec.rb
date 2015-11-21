require 'spec_helper'
require 'ootalk/power'

describe 'powers' do
  let(:powers1) {Ootalk::Power.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2))}
  let(:powers2) {Ootalk::Power.new(Ootalk::Constant.new(2), Ootalk::Constant.new(3))}
  let(:powers3) {Ootalk::Power.new(Ootalk::Constant.new(3), Ootalk::Constant.new(0))}

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