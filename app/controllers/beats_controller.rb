class BeatsController < ApplicationController

    get '/beats/' do 
        @beats = Beat.all
        erb :'beats/index'
    end

    get '/beats/:id' do 
        @beat = Beat.find(params[:id])
        erb :'beats/show'
    end
end