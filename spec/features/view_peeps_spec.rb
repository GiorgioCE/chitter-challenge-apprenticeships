require 'pg'
# As a Maker
# So that I can see what people are doing
# I want to see all the messages (peeps)
# in a browser

feature 'viewing peeps' do
  scenario 'people can view all the messages(peeps)' do
    visit '/'
    expect(page).to have_content "Most Recent Peeps:"
  end
end
