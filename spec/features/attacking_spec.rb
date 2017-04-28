feature 'attacking' do
  scenario 'can attack player' do
    sign_in_and_play
    click_on('Fire Attack')
    expect(page).to have_content('Alex successfully attacked David')
  end

scenario 'reduces points of the second player' do
    sign_in_and_play
    click_on('Fire Attack')
    expect(page).to have_content('David 50/60hp')
  end
end
