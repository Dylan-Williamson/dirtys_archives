require './config/env.rb'

use Rack::MethodOverride
use BeatsController
use UsersController
use SessionsController
run ApplicationController