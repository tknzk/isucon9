lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'isucari/web'
require 'mysql2/client/general_log'

use Mysql2::Client::GeneralLog::Middleware, enabled: true, backtrace: true, path: 'tmp/sql_log'

configure do
  LOGGER = Logger.new("sinatra.log")
  enable :logging, :dump_errors
  set :raise_errors, true
end

run Isucari::Web
