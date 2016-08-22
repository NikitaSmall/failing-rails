Given(/^I go to the posts page$/) do
  visit('/posts')
end

When(/^I am on the page$/) do
  expect(page).to have_current_path(posts_path)
end

Then(/^I see "(.*?)" title$/) do |title|
  expect(page).to have_content(title)
end
