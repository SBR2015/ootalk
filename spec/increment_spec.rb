require 'spec_helper'
require 'ootalk/increment'


describe 'Increment class' do
  # inc = 0
  OoTalk::Assignment.new(OoTalk::Variable.new('inc'), OoTalk::Constant.new(0)).exec
  # Incrementテストの変数の用意
  let(:inc_1) {OoTalk::Increment.new(OoTalk::Variable.new('inc'))}

  it "new" do
    expect(inc_1).to_not be_nil
  end

  it "exec" do
    # inc = inc + 1
    expect(inc_1.exec).to eq(1)
    expect(inc_1.exec).to eq(2)
    expect(inc_1.exec).to eq(3)
  end

  it "to_s" do
    expect(inc_1.to_s).to eq("inc++")
  end
end
