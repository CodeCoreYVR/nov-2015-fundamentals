require "sinatra"
require "sinatra/reloader" # this will automatically reload Sinatra so that
                           # we don't have to stop and start the server every
                           # time we make a change. It requires that you have
                           # sinatra-contrib gem installed.

# When Sinatra received an HTTP GET request to "/" url (home page)
# it will respond with a text that says "Hello World!"
# GET: is the default verb when you type a URL inside a browser address bar
# it's also the default verb when you click on a link in your website
# get "/" do
#   "Hello World!"
# end

get "/" do
  # defining an instance variable in here makes it possible to use this variable
  # in the erb template file (index.erb in this case)
  @lucky_number = rand(1000)

  # this will look for a file named index.erb with a folder named views located
  # within the same folder as this file (app.rb). This is all conventions from
  # Sinatra. erb is a method that came from Sinatra gem. The first argument of
  # that method must be a symbol matching the template name inside the views
  # folder
  erb(:index)
end

get "/hello" do
  "Hello there!"
end
