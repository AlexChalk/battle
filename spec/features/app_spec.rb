require_relative '../../app.rb'
describe Battle do

it 'tests the page has content' do
  expect('http://localhost:4567/').to have_content("Testing infrastructure working!")
end

end
