require 'spec_helper'
require_relative '../lib/constant.rb'
require_relative '../lib/substract.rb'

describe "substract" do
  it "new" do
    cons1 = Constant.new(5)
    cons2 = Constant.new(4)
    substract = Substract.new(cons1, cons2)
    expect(substract).to_not be_nil
  end

  it "exec" do
    cons1 = Constant.new(5)
    cons2 = Constant.new(4)
    cons3 = Constant.new(1)

    substract1 = Substract.new(cons1, cons2)
    substract2 = Substract.new(cons2, cons3)

    expect(substract1.exec).to be 1
    expect(substract2.exec).to be 3
  end
end
