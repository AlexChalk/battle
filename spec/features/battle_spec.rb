
feature 'Testing infrastructure' do
  scenario 'can take form input and render it onscreen' do
    sign_in_and_play
    expect(page).to have_content('Alex vs. David')
  end

  scenario 'can display player hp' do
    sign_in_and_play
    expect(page).to have_content('David	60/60hp')
  end


end
