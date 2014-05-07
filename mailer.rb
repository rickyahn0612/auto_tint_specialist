require 'sinatra/base'
require 'pony'
require 'rubygems'

class MailForms < Sinatra::Base
  get '/' do
    haml :contact
  end

  post '/' do
    Pony.mail(:to => 'rickyahn0612@yahoo.com', :from => "myemail@onehouse.net", :subject => "art inquiry from ruckus", :body => "sup")
    redirect '/index.html'
  end
end

