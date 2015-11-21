require 'spec_helper'
require 'ootalk/surplus'

describe 'surpluses' do
  let(:surpluses1) {Ootalk::Surplus.new(Ootalk::Constant.new(15), Ootalk::Constant.new(3))}
  let(:surpluses2) {Ootalk::Surplus.new(Ootalk::Constant.new(15), Ootalk::Constant.new(4))}
  let(:surpluses3) {Ootalk::Surplus.new(Ootalk::Constant.new(3), Ootalk::Constant.new(4))}

  it 'initialize' do
    expect(surpluses1).to_not be_nil
    expect(surpluses2).to_not be_nil
    expect(surpluses3).to_not be_nil
  end

  it 'exec' do

    expect(surpluses1.exec).to be 0
    expect(surpluses2.exec).to be 3
    expect(surpluses3.exec).to be 3
  end
end