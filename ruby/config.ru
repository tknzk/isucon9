lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'isucari/web'
require 'mysql2/client/general_log'

use Mysql2::Client::GeneralLog::Middleware, enabled: true, backtrace: true, path: 'tmp/sql_log'

run Isucari::Web
