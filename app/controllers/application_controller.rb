require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/team" do
      @team = params[:team]
      @heroes = []
      params[:team][:hero].each do |h|
        @heroes << h
      end
      @heroes
      # binding.pry

      erb :team
    end

end
