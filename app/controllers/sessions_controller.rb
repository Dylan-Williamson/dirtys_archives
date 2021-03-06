class SessionsController < ApplicationController

    get '/login' do
        logged_in_redirect
        erb :'sessions/login'
    end

    get '/signup' do 
        logged_in_redirect
        erb :'sessions/signup'
    end
    
    post '/signup' do 
        @u = User.new(username: params[:username], password: params[:password], password_confirmation: params[:password_confirmation])
        if @u.save
            session[:user_id] = @u.id
            redirect '/dashboard'
        else
            erb :'sessions/signup'
        end
    end
    
    post '/login' do
        u = User.find_by(username: params[:username])
        if u && u.authenticate(params[:password])
            session[:user_id] = u.id
            redirect '/dashboard'
        else
            @error = "Incorrect Username or Password"
            erb :'sessions/login'
        end
    end

    delete '/logout' do
        session.clear
        redirect '/login'
    end
end