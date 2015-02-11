require "sinatra"

before do
  @name = "#{params["name"]}"
  # @fave_genre = "Thriller"
end

# get "/" do
#   erb :welcome, :layout => :boilerplate
# end

get "/library_card" do
  logger.info params
  erb :library_card, :layout => :boilerplate
end

get "/completed" do
  erb :complete, :layout => :boilerplate
end

# Just practice stuff below here....
