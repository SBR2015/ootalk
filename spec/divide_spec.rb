require 'spec_helper'
require 'ootalk/divide'

describe 'divides' do
  let(:divides1) {Ootalk::Divide.new(Ootalk::Constant.new(15),Ootalk::Constant.new(5))}
  let(:divides2) {Ootalk::Divide.new(Ootalk::Constant.new(5),Ootalk::Constant.new(3))}
  let(:divides3) {Ootalk::Divide.new(Ootalk::Constant.new(15),Ootalk::Constant.new(3))}

  it 'new' do
    expect(divides1).to_not be_nil
    expect(divides2).to_not be_nil
    expect(divides3).to_not be_nil
  end

  it 'exec' do
    expect(divides1.exec).to be 3
    expect(divides2.exec).to be 1
    expect(divides3.exec).to be 5
  end
end