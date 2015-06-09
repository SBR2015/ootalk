require 'spec_helper'
require_relative '../lib/constant.rb'
require_relative '../lib/power.rb'

describe "powers" do
  it "new" do
    cons1 = Constant.new(1)
    cons2 = Constant.new(2)
    powers = Power.new(cons1, cons2)
    expect(powers).to_not be_nil
  end

  it "exec" do
    cons1 = Constant.new(1)
    cons2 = Constant.new(2)
    cons3 = Constant.new(3)
    cons4 = Constant.new(0)

    powers1 = Power.new(cons1, cons2)
    powers2 = Power.new(cons2, cons3)
    powers3 = Power.new(cons3, cons4)

    expect(powers1.exec).to be 1
    expect(powers2.exec).to be 8
    expect(powers3.exec).to be 1    
  end
end
