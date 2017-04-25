require_relative '../../app.rb'

describe "the welcome page", :type => :feature do

it 'has content' do
  visit '/'
  expect(page).to have_content("Testing infrastructure working!")
end

end
