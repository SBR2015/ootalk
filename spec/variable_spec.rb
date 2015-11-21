require 'spec_helper'
require 'ootalk/variable'
require 'ootalk/assignment'

describe 'Ootalk::Variable' do
  let(:vars1) {Ootalk::Variable.new('x')}
  let(:vars2) {Ootalk::Variable.new('y')}
  let(:vars3) {Ootalk::Variable.new('z')}
  let(:vars4) {Ootalk::Variable.new('x')}

  it 'initialize' do
    expect(vars1).to_not be_nil
    expect(vars2).to_not be_nil
    expect(vars3).to_not be_nil
    expect(vars4).to_not be_nil
  end

  it 'to_s' do
    expect(vars1.to_s.length).to be >= 0
    expect(vars2.to_s.length).to be >= 0
    expect(vars3.to_s.length).to be >= 0
    expect(vars1.to_s).to eq 'x'
    expect(vars2.to_s).to eq 'y'
    expect(vars3.to_s).to eq 'z'
    expect(vars4.to_s).to eq vars1.to_s
    expect(vars4.to_s).not_to eq vars2.to_s
  end

  it 'exec' do
    expect(vars1.exec).to be_nil
    expect(vars2.exec).to be_nil
    expect(vars3.exec).to be_nil
    expect(vars4.exec).to eq vars1.exec
  end

  it 'self.name=(name)' do
    Ootalk::Variable.name = 5
    expect(Ootalk::Variable.name).to eq 5
  end
end

