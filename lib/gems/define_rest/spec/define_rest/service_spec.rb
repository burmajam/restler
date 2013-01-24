require_relative '../activerecord_helper'
require_relative '../../../define_rest/lib/define_rest/service'
require_relative '../../../define_rest/lib/define_rest/parameter'
require_relative '../../../define_rest/lib/define_rest/header'
require_relative '../factories_helper'

describe DefineRest::Service do
  context 'fields:' do
    it { should respond_to :name }
    it { should respond_to :description }
    it { should respond_to :url }
    it { should respond_to :http_method }
  end

  context 'validations:' do
    it "should require case sensitive unique value for name" do
      FactoryGirl.build(:service).save!(validate: false)
      should validate_uniqueness_of :name
    end
    it { should ensure_inclusion_of(:encryption).in_array(['mandatory', 'optional', 'no']) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:http_method) }
  end

  context 'relationships:' do
    it { should have_many :parameters }
    it { should have_many :headers }
  end

  describe ".search_by_name(name)" do
    def existing_service_with_name(name)
      FactoryGirl.create :service, name: name
    end

    def search_results_for(term)
      DefineRest::Service.search_by_name term
    end

    it "is case insensitive" do
      existing_service = existing_service_with_name 'Create new customer'
      search_results_for('create NEW Customer').should include(existing_service)
    end
    it "finds existing service that contain phrase in name" do
      existing_service = existing_service_with_name 'Create new customer'
      search_results_for('new cus').should include(existing_service)
    end
    it "doesn't return service that doesn't contain phrase in name" do
      existing_service = existing_service_with_name 'Create new customer'
      search_results_for('non existing').should_not include(existing_service)
    end
  end
end