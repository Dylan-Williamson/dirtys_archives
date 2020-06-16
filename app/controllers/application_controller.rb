class ApplicationController < Sinatra::Base

    set :public_folder, Proc.new { File.join(root, "public")}
    set :views, ->{ File.join(root, '../views')}
    enable :sessions
    set :session_secret, ENV['SESSION_SECRET']
    disable :show_exceptions

    get '/' do
        erb :root
    end

    helpers do

        def render_navbar
            if logged_in?
                erb :logged_in_navbar
            else
                erb :logged_out_navbar
            end
        end

        def logged_in_redirect
            redirect '/dashboard' if logged_in?
        end
        
        def current_user
            @user ||= User.find_by(id: session[:user_id])
        end

        def logged_in?
            !!current_user
        end

        def authenticate 
            raise AuthenticationError.new if !logged_in?
        end
    end

    error ActiveRecord::RecordNotFound do 
        status 404
        erb :not_found, layout: false
    end

    error AuthenticationError do
        status 403
        erb :not_authorized, layout: false
    end

    not_found do 
        status 404
        erb :not_found, layout: false
    end
end