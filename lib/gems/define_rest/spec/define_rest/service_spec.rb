require_relative '../activerecord_helper'
require_relative '../../../define_rest/lib/define_rest/service'
require_relative '../factories_helper'

describe DefineRest::Service do
  it { should respond_to :name }
  it { should respond_to :description }
  it { should respond_to :url }
  it { should respond_to :http_method }

  describe ".search_by_name(name)" do
    it "is case insensitive" do
      s = FactoryGirl.create :service, name: 'Create new customer'
      DefineRest::Service.search_by_name('create NEW customer').should include(s)
    end
    it "finds existing service that contain phrase in name" do
      s = FactoryGirl.create :service, name: 'Create new customer'
      DefineRest::Service.search_by_name('new cus').should include(s)
    end
    it "doesn't return service that doesn't contain phrase in name" do
      s = FactoryGirl.create :service, name: 'Create new customer'
      DefineRest::Service.search_by_name('non existing').should_not include(s)
    end
  end
end