require 'bundler'
Bundler.require
require_relative 'model.rb'
class MyApp < Sinatra::Base 
  
  get '/'do
    return erb :index
    
  end
  post '/' do
    @the_fortune=get_fortune
    @the_user=params[:user]
    return erb:results
  end
end