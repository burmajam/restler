require_relative '../activerecord_helper'
require_relative '../../../define_rest/lib/define_rest/header'

describe DefineRest::Header do
  context 'fields:' do
    it { should respond_to :key }
    it { should respond_to :value }
  end
end