require 'spec_helper'
require 'ootalk/greater_than'

describe 'LessThan' do
  it 'new' do
    gt = Ootalk::GreaterThan.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2))
    expect(gt).to_not be_nil
  end

  it 'to_s' do
    gt = Ootalk::GreaterThan.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2))
    expect(gt.to_s.length).to be >= 0
  end

  it 'exec' do
    gt = Ootalk::GreaterThan.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2))
    expect(gt.exec).to be_falsey
    gt = Ootalk::GreaterThan.new(Ootalk::Constant.new(2), Ootalk::Constant.new(1))
    expect(gt.exec).to be_truthy
  end
end
