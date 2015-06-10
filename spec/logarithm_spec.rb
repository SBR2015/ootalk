require 'spec_helper'
require_relative '../lib/constant.rb'
require_relative '../lib/logarithm.rb'

describe "logarithms" do
  it "new" do
    cons1 = Constant.new(10)
    cons2 = Constant.new(2)
    logarithms = Logarithm.new(cons1, cons2)
    expect(logarithms).to_not be_nil
  end

  it "exec" do
    cons1 = Constant.new(10)
    cons2 = Constant.new(2)
    cons3 = Constant.new(3)
    cons4 = Constant.new(8)
    cons5 = Constant.new(0.2)
    cons6 = Constant.new(0.04)
    cons7 = Constant.new(-2)
    
    logarithms1 = Logarithm.new(cons1, cons3)
    logarithms2 = Logarithm.new(cons2, cons4)
    logarithms3 = Logarithm.new(cons5, cons6)
    logarithms4 = Logarithm.new(cons1, cons5)
    logarithms5 = Logarithm.new(cons6, cons3)
    logarithms6 = Logarithm.new(cons7, cons2)

    expect(logarithms1.exec).to be == 0.47712125471966244
    expect(logarithms2.exec).to be == 3.0 
    expect(logarithms3.exec).to be == 2.0
    expect(logarithms4.exec).to be == -0.6989700043360187
    expect(logarithms5.exec).to be == -0.3413030972429927
    expect(logarithms6.exec).to raise_error 

  end
end
