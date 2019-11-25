class ArticlesController < ApplicationController
  get '/articles' do
    @articles = Article.all
    erb :'articles/index'
  end
  
  get '/article/:id' do
    @article = Article.find(params[:id])
    erb :'articles/show'
  end

end