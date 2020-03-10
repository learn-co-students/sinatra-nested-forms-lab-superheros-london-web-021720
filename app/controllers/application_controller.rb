require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        details = params
        @team = details["team"]
        @members = @team["members"]
        erb :team
    end


end
