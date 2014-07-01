Given /^the following articles exist$/ do |table|
	# table is a Cucumber::Ast__Table
	Article.create table.hashes
end

Given /^the article "(.*?)" should have body "(.*?)"$/ do |title, body|
	Article.find_by_title(title).body.should eq body
end

Then /^I should not see the "(.*?)" field$/ do |name|
        page.should have_no_field(name)
end
