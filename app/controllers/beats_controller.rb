class BeatsController < ApplicationController

    get '/beats' do
        authenticate 
        @beats = Beat.all
        erb :'beats/index'
    end

    get '/beats/:id' do 
        authenticate
        @beat = Beat.find(params[:id])
        erb :'beats/show'
    end
end