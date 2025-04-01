require 'sinatra'
require "sinatra/reloader" if development?
require 'json'
require 'net/http'
require 'uri'

# CaaS Settings
set :port, ENV.fetch('PORT', 3000)
set :bind, '0.0.0.0'


# CaaS Functions

# ASCII Cat Logo
def ascii_cat_logo
  """
  /\\_/\\   Cat-as-a-Service  
 ( o.o )  Powered by Ruby & Sinatra
 >  ^  <  Created by: codex-0915
  """
end

# Fetch random cat picture
def get_cat_picture
  uri = URI('https://api.thecatapi.com/v1/images/search')
  response = Net::HTTP.get(uri)
  JSON.parse(response).dig(0, 'url')
end

# Fetch random cat fact
def get_cat_fact
  uri = URI('https://catfact.ninja/fact')
  response = Net::HTTP.get(uri)
  JSON.parse(response)['fact']
end
  
# Random meow sounds
MEOW_SOUNDS = [
    "Meow! 🐱", "Mrrrow! 😺", "Purr... 💤", "Mew! 😻", "Meeeow! 🐱"
]

  
# CaaS APIs

get '/' do
  ascii_cat_logo + "\nWelcome to Cat-as-a-Service! 🐱\n\nUse:\n\t/cat to get a random cat picture\n\t/fact to get a random cat fact\n\t/meow to get a random cat meow sound"
end
  
get '/cat' do
  get_cat_picture
end

get '/fact' do
  get_cat_fact
end

get '/meow' do
  MEOW_SOUNDS.sample
end

# CaaS Main
puts ascii_cat_logo