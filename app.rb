require 'sinatra'
require 'net/http'
require 'json'

set :port, ENV.fetch('PORT', 3000)
set :bind, '0.0.0.0'

get '/' do
    "<h1>Hello World! ~ From Meoworld</h1>"
end