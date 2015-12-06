require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index
end

post "/convert" do
  # °C x 9/5 + 32 = °F.
  # {"temp_in_c"=>"25"}
  @temp_in_c = params["temp_in_c"].to_f
  @temp_in_f = params["temp_in_c"].to_f * 9 / 5 + 32
  erb :index
end
