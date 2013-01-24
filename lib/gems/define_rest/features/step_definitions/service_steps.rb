Given /^service with name "(.*?)" does not exist$/ do |service_name|
  DefineRest::Service.search_by_name(service_name).should have(0).services
end

When /^I add new service with name "(.*?)"$/ do |service_name|
  FactoryGirl.create :service, name: service_name
end

Then /^service with name "(.*?)" should exist$/ do |service_name|
  DefineRest::Service.search_by_name(service_name).should have_at_least(1).service
end
