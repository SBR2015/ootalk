require 'spec_helper'
require 'ootalk/program'

describe 'program' do
  it 'new' do
    prog = OoTalk::Program.new('[{"Program":{"GreaterThan":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog).to_not be_nil
  end

  it 'exec' do
    prog = OoTalk::Program.new('[{"Program":{"GreaterThan":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec["eval_0"]["result"]).to eq 2
    expect(prog.exec["eval_1"]["result"]).to eq 3
    expect(prog.exec["eval_2"]["result"]).to eq false

    prog2 = OoTalk::Program.new('[{"Program":{"Add":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')

    expect(prog2.exec["eval_0"]["result"]).to eq 2
    expect(prog2.exec["eval_1"]["result"]).to eq 3
    expect(prog2.exec["eval_2"]["result"]).to eq 5

    prog3 = OoTalk::Program.new('[{"Program":{"Constant":{"Left": 15}}}]')
    expect(prog3.exec["eval_0"]["result"]).to eq 15
  end
end
