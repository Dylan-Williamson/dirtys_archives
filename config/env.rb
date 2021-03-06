ENV["APP_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["APP_ENV"])

configure :development do
    set :database, {adapter: 'sqlite3', database: 'db/db.sqlite3'}
end

if ENV["APP_ENV"] == "development"
    require_relative '../secrets'
end
require_all 'app/errors'
require_all 'app'