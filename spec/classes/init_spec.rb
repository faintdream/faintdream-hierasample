require 'spec_helper'
describe 'hierasample' do
  context 'with default values for all parameters' do
    it { should contain_class('hierasample') }
  end
end
