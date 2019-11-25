require "sinatra/activerecord"

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  
  configure do
    set :views, "app/views"
  end

  get '/' do
    erb :home
  end
end