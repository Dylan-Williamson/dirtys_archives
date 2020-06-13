require_relative './config/env'

use Rack::MethodOverride
use BeatsController
use UsersController
use SessionsController
run ApplicationController