require 'spec_helper'
require 'ootalk/program'

describe 'program' do
  it 'new' do
    prog = Ootalk::Program.new('[{"Program":{"GreaterThan":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog).to_not be_nil
  end

  it 'arithmetic operator exec' do
    prog = Ootalk::Program.new('[{"Program":{"Add":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')

    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq 5

    # (2 + 3) + 3
    prog = Ootalk::Program.new('[{"Program":{"Add":{"Left":{"Add":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq 5
    expect(prog.exec[3]["result"]).to eq 3
    expect(prog.exec[4]["exec"]).to eq "((2+3)+3)"
    expect(prog.exec[4]["result"]).to eq 8

    prog = Ootalk::Program.new('[{"Program":{"Constant":{"Left": 15}}}]')
    expect(prog.exec[0]["result"]).to eq 15

    prog = Ootalk::Program.new('[{"Program":{"Subtract":{"Left":{"Constant":{"Left": 5}}, "Right":{"Constant":{"Left":3}}}}}]')

    expect(prog.exec[0]["result"]).to eq 5
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq 2

    prog = Ootalk::Program.new('[{"Program":{"Times":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')

    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq 6

    prog = Ootalk::Program.new('[{"Program":{"Divide":{"Left":{"Constant":{"Left": 6}}, "Right":{"Constant":{"Left":3}}}}}]')

    expect(prog.exec[2]["result"]).to eq 2

    prog = Ootalk::Program.new('[{"Program":{"Divide":{"Left":{"Constant":{"Left": 6}}, "Right":{"Constant":{"Left":3}}}}}]')

    expect(prog.exec[2]["result"]).to eq 2

    prog = Ootalk::Program.new('[{"Program":{"Power":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')

    expect(prog.exec[2]["result"]).to eq 8

    prog = Ootalk::Program.new('[{"Program":{"Logarithm":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":8}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 8
    expect(prog.exec[2]["result"]).to eq 3

    prog = Ootalk::Program.new('[{"Program":{"Surplus":{"Left":{"Constant":{"Left": 10}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 10
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq 1
  end

  it 'boolean operator exec' do
    prog = Ootalk::Program.new('[{"Program":{"GreaterThan":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq false

    prog = Ootalk::Program.new('[{"Program":{"LessThan":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq true

    prog = Ootalk::Program.new('[{"Program":{"GreaterThanOrEqualTo":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq false

    prog = Ootalk::Program.new('[{"Program":{"LessThanOrEqualTo":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq true

    prog = Ootalk::Program.new('[{"Program":{"EqualTo":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq false

    prog = Ootalk::Program.new('[{"Program":{"NotEqual":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq true
  end

  it 'logical operator exec' do
    prog = Ootalk::Program.new('[{"Program":{"And":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq 3

    prog = Ootalk::Program.new('[{"Program":{"Nand":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq false

    prog = Ootalk::Program.new('[{"Program":{"Or":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq 2

    prog = Ootalk::Program.new('[{"Program":{"Nor":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq false

    prog = Ootalk::Program.new('[{"Program":{"Xor":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.exec[0]["result"]).to eq 2
    expect(prog.exec[1]["result"]).to eq 3
    expect(prog.exec[2]["result"]).to eq 1
  end

  it 'instruction exec' do
    # a = 2
    # (a + 3)
    # => 5
    prog = Ootalk::Program.new('[{"Program":{"Assignment":{"Left":{"Variable":{"Left": "a"}}, "Right":{"Constant":{"Left":2}}}}},
    {"Program":{"Add":{"Left":{"Variable":{"Left": "a"}}, "Right":{"Constant":{"Left":3}}}}}
    ]')
    puts prog.exec
    expect(prog.exec[1]["result"]).to eq 2
    expect(prog.exec[3]["result"]).to eq 5
  end

  it 'input_raw_data' do
    prog = Ootalk::Program.new('[{"Program":{"GreaterThan":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.input_raw_data).to eq '[{"Program":{"GreaterThan":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]'
  end

  it 'to_s' do
    prog = Ootalk::Program.new('[{"Program":{"GreaterThan":{"Left":{"Constant":{"Left": 2}}, "Right":{"Constant":{"Left":3}}}}}]')
    expect(prog.to_s.length).to be > 0
  end
end
