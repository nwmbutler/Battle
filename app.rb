require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'heya!'
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/secret' do
  'this is not secret'
end
