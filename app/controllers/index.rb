get '/' do
  # Look in app/views/index.erb
  @shortened_links = Url.all
  erb :index
end

post '/urls' do
  # create a new Url
  @url = Url.create(url: params[:link])
  redirect to "/"
end

# e.g., /q6bda
get '/:short_url' do
  # redirect to appropriate "long" URL
end




