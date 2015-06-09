require 'spec_helper'
require_relative '../lib/constant.rb'
require_relative '../lib/plus.rb'

describe "pluses" do
  it "new" do
    cons1 = Constant.new(1)
    cons2 = Constant.new(2)
    pluses = Plus.new(cons1, cons2)
    expect(pluses).to_not be_nil
  end

  it "exec" do
    cons1 = Constant.new(1)
    cons2 = Constant.new(2)
    cons3 = Constant.new(3)

    pluses1 = Plus.new(cons1, cons2)
    pluses2 = Plus.new(cons2, cons3)

    expect(pluses1.exec).to be 3
    expect(pluses2.exec).to be 5
  end
end
