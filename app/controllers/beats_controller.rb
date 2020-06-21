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
    
    get '/beats/:id' do 
        authenticate
        @beat = Beat.find(params[:id])
        erb :'beats/show'
    end
    
    get '/beats/:id/edit' do 
        @beat = Beat.find(params[:id])
        authorize(@beat)
        erb :'beats/edit'
    end
    
    patch '/beats/:id' do 
        @beat = Beat.find(params[:id])
        authorize(@beat)
        @beat.update(title: params[:title])
        @beat.save
        redirect to '/dashboard'
    end
        
    delete '/beats/:id' do
        b = Beat.find(params[:id])
        authorize(b)
        b.destroy
        redirect to '/dashboard'
    end
end