require 'spec_helper'
require_relative '../lib/constant.rb'
require_relative '../lib/times.rb'

describe "times" do
  it "new" do
    cons1 = Constant.new(1)
    cons2 = Constant.new(2)
    times = Times.new(cons1, cons2)
    expect(times).to_not be_nil
  end

  it "exec" do
    cons1 = Constant.new(1)
    cons2 = Constant.new(2)
    cons3 = Constant.new(3)

    times = Times.new(cons1, cons2)
    times2 = Times.new(cons2, cons3)

    expect(times.exec).to be 2
    expect(times2.exec).to be 6
  end
end
