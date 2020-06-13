class UsersController < ApplicationController

    get '/dashboard' do 
        authenticate
        erb :"users/dashboard"
    end
end