require 'sinatra/base'

class Battle < Sinatra::Base
enable :sessions
set :session_secret, 'super-secret'


  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    erb(:play)
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0
end
