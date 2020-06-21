class BeatsController < ApplicationController

    get '/beats' do
        authenticate 
        @beats = Beat.all
        erb :'beats/index'
    end

    get '/beats/new' do
        authenticate
        erb :'beats/new'
    end

    post '/beats' do
        authenticate
        @beat = Beat.create(title: params[:title], user: current_user)
        redirect to '/dashboard'
    end
    
    get '/beats/:id/edit' do 
        authenticate
        @beat = Beat.find(params[:id])
        erb :'beats/edit'
    end
    
    get '/beats/:id' do 
        authenticate
        @beat = Beat.find(params[:id])
        erb :'beats/show'
    end
    
    patch '/beats/:id' do 
        authenticate
        @beat = Beat.find(params[:id])
        @beat.update(title: params[:title])
        @beat.save
        redirect to '/dashboard'
    end
        
    delete '/beats/:id' do
        authenticate 
        @beat = Beat.find(params[:id])
        @beat.destroy
        redirect to '/dashboard'
    end
end