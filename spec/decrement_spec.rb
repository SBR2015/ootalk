require 'spec_helper'
require 'ootalk/decrement'


describe 'Decrement class' do
  # dec = 10
  OoTalk::Assignment.new(OoTalk::Variable.new('dec'), OoTalk::Constant.new(10)).exec
  # Decrementテストの変数の用意
  let(:dec_1) {OoTalk::Decrement.new(OoTalk::Variable.new('dec'), OoTalk::Constant.new(1))}

  it "new" do
    expect(dec_1).to_not be_nil
  end

  it "exec" do
    # dec = dec - 1
    expect(dec_1.exec).to eq(9)
    expect(dec_1.exec).to eq(8)
    expect(dec_1.exec).to eq(7)
  end

  it "to_s" do
    expect(dec_1.to_s).to eq("dec--")
  end
end
