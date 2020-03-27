# routes.rb
current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }

get '/article' do

        @article = Article.create(params[:article])

end