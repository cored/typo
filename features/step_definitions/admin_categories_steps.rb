Given /^I have a category "(.*?)"$/ do |category_name|
    Category.create! name:category_name
end
