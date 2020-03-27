class ApplicationController < Sinatra::Base
    
    configure do
        set :views, "app/views"
        set :public_dir, "public"
    end

    
    get '/' do
        erb :index
    end

    get '/data' do
        erb :data
    end

    get 'post' do
        erb :post
    end

    get '/article' do
        Article.create(params[:article])
        @article = Article.first
        
        erb :article
    end
    
      # and more routes...

  end