

ENV["APP_ENV"] ||= "development"

require 'bundler/setup'
bundler.require(:default, ENV["APP_ENV"])

configure :development do
    set :database, {adapter: 'sqlite3', database: 'db/db.sqlite3'}
end

require_all 'app'