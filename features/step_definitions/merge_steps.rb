Given /^the following articles exist$/ do |table|
	# table is a Cucumber::Ast__Table
	Article.create table.hashes
end

Given /^the following comments exist$/ do |table|
        # table is a Cucumber::Ast__Table
        Comment.create table.hashes
end




Given /^the article "(.*?)" should have body "(.*?)"$/ do |title, body|
	Article.find_by_title(title).body.should eq body
end

Given /^the article "(.*?)" should have author "(.*?)"$/ do |title, author|
        Article.find_by_title(title).author.should eq author
end

Given /^the article "(.*?)" should have title "(.*?)"$/ do |title, title2|
        Article.find_by_title(title).title.should eq title2
end

Given /^the article "(.*?)" should have comment "(.*?)"$/ do |title, comment|
        Article.find_by_title(title).comments.should eq comment
end



Then /^I should not see the "(.*?)" field$/ do |name|
        page.should have_no_field(name)
end
