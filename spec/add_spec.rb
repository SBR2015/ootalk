require 'spec_helper'
require_relative '../lib/constant.rb'
require_relative '../lib/add.rb'

describe "Add" do
  it "new" do
    cons1 = Constant.new(1)
    cons2 = Constant.new(2)
    add = Add.new(cons1, cons2)
    expect(add).to_not be_nil
  end

  it "exec" do
    cons1 = Constant.new(1)
    cons2 = Constant.new(2)
    cons3 = Constant.new(3)

    add1 = Add.new(cons1, cons2)
    add2 = Add.new(cons2, cons3)

    expect(add1.exec).to be 3
    expect(add2.exec).to be 5
  end
end
