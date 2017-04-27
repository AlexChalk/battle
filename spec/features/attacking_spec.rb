feature 'attacking' do
  scenario 'can attack player' do
    sign_in_and_play
    click_button('Fire Attack')
    expect(page).to have_content('Your attack was successful!')
  end

scenario 'reduces points of the second player' do
    sign_in_and_play
    click_button('Fire Attack')
    expect(page).to have_content('David 50/60hp')
  end
end
