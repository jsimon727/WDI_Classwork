require 'sinatra'
require 'sinatra/reloader'
require 'pry'

guestbook = { 1 => "Jeff", 2 => "PJ", 3 => "Peter"}


get '/guestbook' do
  guestbook.values.join(", ")
end

get '/guestbook/:id' do
  entry = guestbook[params[:id].to_i]
  if entry
    entry 
  else
    "None found silly"
end
end

post '/guestbook' do
  last_id = guestbook.keys.max
  guestbook[last_id +1] = params[:name]
end

