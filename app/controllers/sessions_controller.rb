class SessionsController < ApplicationController

    get '/login' do
        erb :'sessions/login'
    end

    get '/signup' do 
        erb :'sessions/signup'
    end

    post '/login' do
        
    end

    post '/signup' do 
        @u = User.new(username: params[:username], password: params[:password])
        if @u.save
            session[:user_id] = @u.id
            redirect '/'
        else
            erb :'sessions/signup'
        end
    end
end