require 'spec_helper'
require 'ootalk/decrement'


describe 'Decrement class' do
  # dec = 10
  Ootalk::Assignment.new(Ootalk::Variable.new('dec'), Ootalk::Constant.new(10)).exec
  # Decrementテストの変数の用意
  let(:dec_1) {Ootalk::Decrement.new(Ootalk::Variable.new('dec'))}

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
