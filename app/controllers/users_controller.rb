class UsersController < ApplicationController

    get '/dashboard' do 
        authenticate
        erb :"users/dashboard"
    end

    get '/account/edit' do 
        authenticate
        erb :'users/edit_account'
    end

    patch '/account' do 
        authenticate
        @user = current_user
        if !params[:password].empty?
            @user.update(username: params[:username])
            if @user.errors.any?
                erb :'users/edit_account'
            else
                redirect '/dashboard'
            end
        else
            if @user.authenticate(params[:password])
                @user.update(username: params[:username], password: params[:new_password], password_confirmation: params[:new_password_confirmation])
                if @user.errors.any?
                    erb :'users/edit_account'
                else
                    redirect '/dashboard'
                end
            else
                @user.errors.add(:password, "is incorrect")
                erb :'users/edit_account'
            end
    end
end