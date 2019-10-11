require 'sinatra/base'

class Chitter < Sinatra::Base

  get '/' do
    @peeps = peeps.all
  end
run! if app_file == $0
end
