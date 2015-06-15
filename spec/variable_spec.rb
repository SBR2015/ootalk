require 'spec_helper'
require 'ootalk/variable'

describe 'OoTalk::Variable' do
  it "new" do
    vars = OoTalk::Variable.new("x")
    expect(vars).to_not be_nil
  end

  it "to_s" do
    vars1 = OoTalk::Variable.new("x")
    vars2 = OoTalk::Variable.new("y")
    vars3 = OoTalk::Variable.new("z")
    vars4 = OoTalk::Variable.new("x")

    expect(vars1.to_s.length).to be >= 0
    expect(vars2.to_s.length).to be >= 0
    expect(vars3.to_s.length).to be >= 0
    expect(vars1.to_s).to eq "x"
    expect(vars2.to_s).to eq "y"
    expect(vars3.to_s).to eq "z"
    expect(vars4.to_s).to eq vars1.to_s
    expect(vars4.to_s).not_to eq vars2.to_s
  end
  
  it "exec" do
    vars1 = OoTalk::Variable.new("x")
    vars2 = OoTalk::Variable.new("y")
    vars3 = OoTalk::Variable.new("z")
    vars4 = OoTalk::Variable.new("x")

    expect(vars1.exec).to be_nil
    expect(vars2.exec).to be_nil
    expect(vars3.exec).to be_nil
    expect(vars4.exec).to be vars1.exec 
  end
end
