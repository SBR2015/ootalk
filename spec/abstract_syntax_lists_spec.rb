require 'spec_helper'
require_relative '../abstract_syntax_lists'
require 'i18n'

describe 'AbstractSyntaxLists' do

  it "should be able to use create methods" do
    expect(AbstractSyntaxLists.create(:ja)).to be_truthy
  end

  it "should be invalid locales" do
    expect{AbstractSyntaxLists.create("fooooooo")}.to raise_error(I18n::InvalidLocale)
  end

  it "shouldn't be exist" do
    expect{AbstractSyntaxLists.create(:ar)}.to raise_error(I18n::InvalidLocale)
  end

end
