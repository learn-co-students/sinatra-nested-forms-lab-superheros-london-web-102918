require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

#New
    get "/" do
      erb :super_hero
    end

#Create
    post "/team" do
      @team_name = params["team"]["name"]
      @team_motto = params["team"]["motto"]
      @member1 = params["team"]["members"][0]["name"]
      @member2 = params["team"]["members"][1]["name"]
      @member3 = params["team"]["members"][2]["name"]
      @member1_power = params["team"]["members"][0]["power"]
      @member2_power = params["team"]["members"][1]["power"]
      @member3_power = params["team"]["members"][2]["power"]
      @member1_bio = params["team"]["members"][0]["bio"]
      @member2_bio = params["team"]["members"][1]["bio"]
      @member3_bio = params["team"]["members"][2]["bio"]
      erb :team
    end

end
