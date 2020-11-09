feature 'adding messages' do
  scenario "It adds peoples messages/peeps" do
    visit '/'
    fill_in 'person', with: 'User'
    fill_in 'message', with: 'Test message'
    click_button('Send peep')

    expect(page).to have_content('User')
    expect(page).to have_content('Test message')
  end
end
