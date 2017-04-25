require 'sinatra'

set :session_secret, 'super-secret'

get '/battle' do
  "hello battle"
end
