require 'sinatra/base'

class Battle < Sinatra::Base
set :session_secret, 'super-secret'

  get '/' do
    "hello battle"
  end

  run! if app_file == $0
end
