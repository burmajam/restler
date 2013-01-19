Given /^service with name "(.*?)" does not exist$/ do |service_name|
  !DefineRest::Service.exists? service_name
end

When /^I add new service with name "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^service with name "(.*?)" should exist$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
