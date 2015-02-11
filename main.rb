require "sinatra"

before do
  @name = "#{params["name"]}"
  @last_name = "#{params["last_name"]}"
  @address = "#{params["address"]}"
  @city = "#{params["city"]}"
  @state = "#{params["state"]}"
  @zip = "#{params["zip"]}"
  @birthdate = "#{params["birthdate"]}"
  @fave_genre = "#{params["fave_genre"]}"
  
end

get "/" do
  erb :welcome, :layout => :boilerplate
end

get "/library_card" do
  logger.info params
  erb :library_card, :layout => :boilerplate
end

get"/info_check" do
  erb :info_check, :layout => :boilerplate
end

get "/completed" do
  erb :complete, :layout => :boilerplate
end

# Just practice stuff below here....
