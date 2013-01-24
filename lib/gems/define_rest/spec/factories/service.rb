FactoryGirl.define do
  factory :service, class: DefineRest::Service do
    sequence(:name) { |n| "Service #{n}" }
    url 'customers'
    http_method 'GET'
  end
end
