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
        @beat = Beat.create(title: params[:title], user: current_user)
        redirect to '/dashboard'
    end
    
    get '/beats/:id/edit' do 
        authenticate
        @beat = Beat.find(params[:id])
        erb :'beats/edit'
    end
    
    patch '/beats/:id' do 
        authenticate
        @beat = Beat.find(params[:id])
        @beat.update(title: params[:title])
        @beat.save
        redirect to '/beats/#{@beat.id}'
    end
    
    get '/beats/:id' do 
        authenticate
        @beat = Beat.find(params[:id])
        erb :'beats/show'
    end

    delete '/beats/:id' do 
        @beat = Beat.find(params[:id])
        @beat.destroy
        redirect to '/beats'
    end
end