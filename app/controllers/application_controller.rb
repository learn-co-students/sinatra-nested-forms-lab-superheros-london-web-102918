require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


      get '/' do
        "hjhgnhg"
        erb :super_hero
      end

      post '/team' do
        @name = params[:team][:name]
        @motto = params[:team][:motto]
        @member1_name = params[:member1_name]
        @member1_power = params[:member1_power]
        @member1_bio = params[:member1_bio]
        @member2_name = params[:member2_name]
        @member2_power = params[:member2_power]
        @member2_bio = params[:member2_bio]
        @member3_name = params[:member3_name]
        @member3_power = params[:member3_power]
        @member3_bio = params[:member3_bio]
        erb :team
      end


end
