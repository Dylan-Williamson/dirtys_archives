require_relative './config/env'

use Rack::MethodOverride
use UsersController
use SessionsController
run ApplicationController