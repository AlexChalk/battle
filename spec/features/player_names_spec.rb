feature 'player names' do
   scenario 'can take form input and render it onscreen' do
    sign_in_and_play
    expect(page).to have_content('Alex vs. David')
  end
end
