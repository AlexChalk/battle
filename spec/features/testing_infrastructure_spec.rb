require_relative '../../app.rb'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit '/'
    expect(page).to have_content("Testing infrastructure working!")
  end

  scenario 'can take form input and render it onscreen' do
    visit '/'
    fill_in('player_1', with: 'Alex')
    fill_in('player_2', with: 'David')
    click_button('Submit')
    expect(page).to have_content('Alex vs. David')
  end
end
