require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get('/') {erb :index}
    post('/teams') {
        @team = Team.new(params[:team])
        params[:team][:members].each do |member|
            SuperHero.new(member)
        end
        
        @super_hero = SuperHero.all
        erb :team
    }


end
