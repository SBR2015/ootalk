require 'spec_helper'
require_relative '../lib/greater_than_or_equal_to'
require_relative '../lib/constant'

describe "GreaterThanOrEqualTo relation" do
  it "should execute properly" do
    ge1 = GreaterThanOrEqualTo.new(Constant.new(1), Constant.new(2))
    expect(ge1.exec).to be_falsey
    ge2 = GreaterThanOrEqualTo.new(Constant.new(2), Constant.new(1))
    expect(ge2.exec).to be_truthy
    ge3 = GreaterThanOrEqualTo.new(Constant.new(1), Constant.new(1))
    expect(ge3.exec).to be_truthy
  end
end