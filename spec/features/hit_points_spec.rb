feature 'hit points' do
  scenario 'can display player hp' do
    sign_in_and_play
    expect(page).to have_content('David	60/60hp')
  end
end
