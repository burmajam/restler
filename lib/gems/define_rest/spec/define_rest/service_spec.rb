require_relative '../../../define_rest/lib/define_rest/service'

describe DefineRest::Service do
  it { should respond_to :name }
  it { should respond_to :description }
  it { should respond_to :url }
  it { should respond_to :http_method }
end