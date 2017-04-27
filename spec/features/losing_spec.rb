feature 'losing' do
  scenario 'player loses when hp reaches 0' do
    sign_in_and_play
    11.times { click_on("Fire Attack") }
    expect(page).to have_content("David has lost the game.")
  end
end
