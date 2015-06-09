require 'spec_helper'
require_relative '../lib/greater_than.rb'
require_relative '../lib/constant.rb'

describe 'LessThan' do
  it "new" do
    gt = GreaterThan.new(Constant.new(1), Constant.new(2))
    expect(gt).to_not be_nil
  end

  it "to_s" do
    gt = GreaterThan.new(Constant.new(1), Constant.new(2))
    expect(gt.to_s.length).to be >= 0
  end

  it "exec" do
    gt = GreaterThan.new(Constant.new(1), Constant.new(2))
    expect(gt.exec).to be_falsey
    gt = GreaterThan.new(Constant.new(2), Constant.new(1))
    expect(gt.exec).to be_truthy
  end

end
