Given /^I open the (.+)$/ do |site|
  @site = site.downcase
  visit @site, :SampleWebpage
end

When /^The page load successfully$/ do
	#This is placeholder to load the page successfully
end

Then /^I should see the total count of the values is (.+)$/ do |value|
	on(SampleWebpage).count_values(value)
end

Given /^I am on the page$/ do
	#Placeholder
end

When /^The values are present$/ do
	#Placeholder
end

Then /^I should see see all the values are greater than zero$/ do
	on(SampleWebpage).greater_than_zero
end

Then /^I should see the total value are equal to sum of the listed values$/ do
	on(SampleWebpage).calculate_total_value
end

Then /^I should see values are formatted as currencies$/ do
	on(SampleWebpage).currency_check
end
