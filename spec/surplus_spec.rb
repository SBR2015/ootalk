require 'spec_helper'
require_relative '../lib/constant.rb'
require_relative '../lib/surplus.rb'

describe "surpluses" do
  it "new" do
    cons1 = Constant.new(15)
    cons2 = Constant.new(3)
    surpluses = Surplus.new(cons1, cons2)
    expect(surpluses).to_not be_nil
  end

  it "exec" do
    cons1 = Constant.new(15)
    cons2 = Constant.new(3)
    cons3 = Constant.new(4)

    surpluses1 = Surplus.new(cons1, cons2)
    surpluses2 = Surplus.new(cons1, cons3)
    surpluses3 = Surplus.new(cons2, cons3)

    expect(surpluses1.exec).to be 0
    expect(surpluses2.exec).to be 3
    expect(surpluses3.exec).to be 3
  end
end
