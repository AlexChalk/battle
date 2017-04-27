require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super-secret'


  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  post '/player-2-attacked' do
    $game.attack($game.player_2)
    $message = "Your attack was successful!"
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @message = $message
    erb(:play)
  end

  run! if app_file == $0
end
