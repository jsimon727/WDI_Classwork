require 'sinatra'
require 'sinatra/reloader'

get '/' do 
  'Hello World!'
end

get '/banana' do
  name = 'julia'
  sport = 'ultimate'
  "#{name} likes playing #{sport}"
end

get '/greet/:name/:sport' do
  if params[:name] =="PJ"
    "Hey"
  else
    "Hey #{params[:name]}, let's play some #{params[:sport]}"
  end

end