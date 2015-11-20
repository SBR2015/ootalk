require 'spec_helper'
require 'ootalk/abstract_syntax_lists'

describe 'AbstractSyntaxLists' do
  it 'should be able to use create methods' do
    expect(OoTalk::AbstractSyntaxLists.create(:en)).to be_truthy
    expect(OoTalk::AbstractSyntaxLists.create(:ja)).to be_truthy
    expect(OoTalk::AbstractSyntaxLists.create(:vi)).to be_truthy
    expect(OoTalk::AbstractSyntaxLists.create(:cn)).to be_truthy
  end

  it 'should return error result' do
    expect(OoTalk::AbstractSyntaxLists.create(:arrrrrrrrrr)).to eq([])
  end
end
