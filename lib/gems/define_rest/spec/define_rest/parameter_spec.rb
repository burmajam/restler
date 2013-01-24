require_relative '../activerecord_helper'
require_relative '../../../define_rest/lib/define_rest/parameter'

describe DefineRest::Parameter do
  it { should respond_to :name }
  it { should respond_to :description }
  it { should respond_to :presence }
  it { should respond_to :example }
  it { should respond_to :quoted_in_json? }

  it { should ensure_inclusion_of(:presence).in_array(['optional', 'mandatory']) }
end