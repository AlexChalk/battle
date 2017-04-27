feature 'attacking' do
  scenario 'can attack player' do
    sign_in_and_play
    click_button('Fire Attack')
    expect(page).to have_content('Your attack was successful!')
  end
end
