require 'sinatra'
require 'net/http'
require 'json'

set :port, ENV.fetch('PORT', 3000)
set :bind, '0.0.0.0'

MEOWS = ["Meow! 🐱", "Mrrrow! 😺", "Purr... 💤", "Mew! 😻"]

get '/meow' do
  content_type :json
  { sound: MEOWS.sample }.to_json
end

get '/cat' do
  content_type :json
  uri = URI('https://api.thecatapi.com/v1/images/search')
  response = Net::HTTP.get(uri)
  image = JSON.parse(response).dig(0, 'url')
  { image: image }.to_json
end

get '/fact' do
  content_type :json
  uri = URI('https://catfact.ninja/fact')
  response = Net::HTTP.get(uri)
  fact = JSON.parse(response)['fact']
  { fact: fact }.to_json
end

get '/' do
  "<h1>Welcome to Cat-as-a-Service! 🐱</h1><p>Try <code>/meow</code>, <code>/cat</code>, or <code>/fact</code>!</p>"
end