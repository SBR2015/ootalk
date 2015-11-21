require 'spec_helper'
require 'ootalk/times'

describe 'times' do
  let(:times1) {Ootalk::Times.new(Ootalk::Constant.new(1), Ootalk::Constant.new(2))}
  let(:times2) {Ootalk::Times.new(Ootalk::Constant.new(2), Ootalk::Constant.new(3))}

  it 'new' do
    expect(times1).to_not be_nil
    expect(times2).to_not be_nil
  end

  it 'exec' do
    expect(times1.exec).to be 2
    expect(times2.exec).to be 6
  end
end