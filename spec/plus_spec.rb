require 'spec_helper'
require_relative '../lib/constant.rb'
require_relative '../lib/plus.rb'

describe "rplus" do
  it "new" do
    cons1 = Constant.new(1)
    cons2 = Constant.new(2)
    rplus = Plus.new(cons1, cons2)
    expect(rplus).to_not be_nil
  end

  it "exec" do
    cons1 = Constant.new(1)
    cons2 = Constant.new(2)
    cons3 = Constant.new(3)

    rplus1 = Plus.new(cons1, cons2)
    rplus2 = Plus.new(cons2, cons3)

    expect(rplus1.exec).to be 3
    expect(rplus2.exec).to be 5
  end
end
