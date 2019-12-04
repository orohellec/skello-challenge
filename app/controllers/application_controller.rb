class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  configure do
    set :views, "app/views"
    set :public_folder, 'public'
  end
 
  get '/' do
    erb :home
  end
end