require 'sinatra/base'
require './lib/chitter'
require 'pg'

class Chitter < Sinatra::Base
  get '/test' do
    'Test page'
  end

  get '/' do
    @peeps = Peeps.all
    erb :'index'
  end
  
  post '/new' do
    person = params['person']
    message = params['message']
    Peeps.peep_add(person, message)
    redirect '/'
  end

  run! if app_file == $0
end
