Given(/^this test with variable "(.*?)"$/) do |number|
  @num = number
end

When(/^I want to pass it$/) do
  puts 'It is just test works!'
end

Then(/^The result equal to "(.*?)"$/) do |number|
  expect(@num).to eq(number)
end

Given(/^this test tooks too long$/) do
  sleep 1
end
