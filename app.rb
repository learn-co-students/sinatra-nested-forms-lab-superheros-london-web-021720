require './config/environment'

class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :super_hero
    end

    post '/teams' do
        @teamname = params[:team][:name]
        @teammotto = params[:team][:motto]
        @memberone = params[:team][:members][0]
        @membertwo = params[:team][:members][1]
        @memberthree = params[:team][:members][2]
        erb :team 
    end

end