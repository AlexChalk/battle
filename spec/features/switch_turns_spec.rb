
feature '#switch_turns' do
  scenario 'switching turns between players' do
     sign_in_and_play
     click_on('Fire Attack')
     click_on('Fire Attack')
     expect(page).to have_content("Alex #{Game.game.player1.hp}/60hp")
   end
 end
