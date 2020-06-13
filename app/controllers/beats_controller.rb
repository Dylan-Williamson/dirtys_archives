class BeatsController < ApplicationController

    get '/beats/' do 
        @beats = Beat.all
        erb :'beats/index'
    end

end