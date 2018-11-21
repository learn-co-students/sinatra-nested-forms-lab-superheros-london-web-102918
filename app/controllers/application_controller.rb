require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team = params[:team]
      @heroes = @team[:heroes].map do |hero_hash|
        hero_hash
      end
      erb :team
    end

end
