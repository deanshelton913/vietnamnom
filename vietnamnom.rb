require 'sinatra'

get '/' do
  haml :index
end

get '/success' do
  haml :success
end
