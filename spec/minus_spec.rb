require 'spec_helper'
require_relative '../lib/constant.rb'
require_relative '../lib/minus.rb'

describe "minuses" do
  it "new" do
    cons1 = Constant.new(5)
    cons2 = Constant.new(4)
    minuses = Minus.new(cons1, cons2)
    expect(minuses).to_not be_nil
  end

  it "exec" do
    cons1 = Constant.new(5)
    cons2 = Constant.new(4)
    cons3 = Constant.new(1)

    minuses1 = Minus.new(cons1, cons2)
    minuses2 = Minus.new(cons2, cons3)

    expect(minuses1.exec).to be 1
    expect(minuses2.exec).to be 3
  end
end
