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
    Game.game = Game.new(player_1, player_2)
    redirect '/play'
  end

  post '/attack' do
    @game = Game.game
    erb(:attack)
  end

  get '/play' do
    @game = Game.game
    erb(:play)
  end

  run! if app_file == $0
end
