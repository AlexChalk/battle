feature 'losing' do
  scenario 'player loses when hp reaches 0' do
    sign_in_and_play
    until Game.game.lost? do
      click_on("Fire Attack")
    end
    expect(page).to have_content("has lost the game.")
  end
end
