
feature 'Testing infrastructure' do
  scenario 'can take form input and render it onscreen' do
    visit '/'
    fill_in('player_1', with: 'Alex')
    fill_in('player_2', with: 'David')
    click_button('Submit')
    expect(page).to have_content('Alex vs. David')
  end

  scenario 'can display player hp' do
    visit '/'
    fill_in('player_1', with: 'Alex')
    fill_in('player_2', with: 'David')
    click_button('Submit')
    expect(page).to have_content('David	60/60hp')
  end


end
