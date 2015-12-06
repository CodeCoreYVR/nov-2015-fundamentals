require "sinatra"
require "sinatra/reloader"
require "data_mapper"


# A Sqlite3 connection to a persistent database
# we set it up so we will create a file called `contact.db` that will contain
# our database
DataMapper.setup(:default, "sqlite://#{Dir.pwd}/contact.db")

class Contact

  # by using this line we include a bunch of methods that are bundled within
  # the data mapper gem that will up make this class `Contact` connect with
  # our database (stored in contact.db).
  # The convention is that DataMapper will create a table that is plurlized
  # name of the class. So this class is called `Contact` so that table will
  # be named `contacts`
  # all the methods we're going to make use of later, such as `property` come
  # from including `DataMapper::Resource` which is a Ruby module.
  include DataMapper::Resource

  # property is a method that we got from DataMapper that defines an `attr_accessor`
  # to match a column in the `contacts` table. So id, first_name, last_name..etc
  # will all be columns in the database table `contacts`.
  # in Sqlite3:
  # Serial -> INTEGER PRIMARY KEY AUTOINCREMENT
  # String -> VARCHAR(50)
  # Text   -> Text
  property(:id, Serial)
  property(:first_name, String)
  property(:last_name, String)
  property(:email, String)
  property(:phone_number, String)
  property(:message, Text)

end

# auto_upgrade! will create the table if it's not created already. If the table
# is created already then it will just add new columns that haven't been added
# before. It will not delete removed columns.
DataMapper.auto_upgrade!

get "/" do
  erb(:index, {layout: :main_layout})
end

post "/contact" do
  # We're using DataMapper class we defined earlier `Contact` to create an
  # entry in the database to store the data entered by the user.
  # Contact.create({first_name:   params["first_name"],
  #                 last_name:    params["last_name"],
  #                 email:        params["email"],
  #                 phone_number: params["phone_number"],
  #                 message:      params["message"]})
  # if you use the same naming convention between the `Contact` class and the
  # `name` attributes inside your HTML then you can just do:
  Contact.create(params)
  # Params will look like:
  #  {"first_name"=>"Tam", "last_name"=>"Kbeili", "email"=>"tam@codecore.ca", "phone_number"=>"778.994.9775", "message"=>"Hello world"}
  # this is exactly the same as what's inside the action above: get "/"
  # we're just using shortcut syntax in here
  erb :thank_you, layout: :main_layout
end

get "/all" do
  # Contact.all from DataMapper will gives an array-like object that contains
  # all the contact records from the database
  @contacts = Contact.all
  erb :all, layout: :main_layout
end

get "/contact/:id" do |id|
  @contact = Contact.get(id)
  erb :contact, layout: :main_layout
end
