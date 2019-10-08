require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    get '/' do
        erb :super_hero
    end

    post '/team' do
        @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
        
        params[:team][:heroes].each do |attributes|
            name = attributes[:name]
            power = attributes[:power]
            bio = attributes[:biography]

            Hero.new(name: name, power: power, biography: bio)
        end

        @heroes = Hero.all


        erb :team
    end
end
