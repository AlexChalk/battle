require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
enable :sessions
set :session_secret, 'super-secret'


  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  post '/confirmation' do
    "Your attack was successful!"
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb(:play)
  end

  run! if app_file == $0
end
