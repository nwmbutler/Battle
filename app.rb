require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'heya!'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
erb(:index2)
end

get '/secret' do
  'this is not secret'
end
