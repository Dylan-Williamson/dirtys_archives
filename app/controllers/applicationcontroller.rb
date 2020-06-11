class ApplicationController < Sinatra::Base

    set :views, ->{ file.join(root, '../views')}

    get '/' do
        "hello"
    end

end