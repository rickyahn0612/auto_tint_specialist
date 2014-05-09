require 'sinatra/base'
require 'pony'
require 'rubygems'
require 'haml'
require 'sass'

class MailForms < Sinatra::Base
  set :views, Proc.new { File.join(root)}
  get '/' do
    haml :contact, :layout => :'/contact'
  end

  post '/' do
    name = params[:name]

    Pony.options = {
      :via => :smtp,
      :via_options => {
        :address => 'smtp.gmail.com',
        :port => '587',
        :domain => 'localhost.localdomain',
        :user_name => 'ricky@onehouse.net',
        :password => 'Dookies1!',
        :authentication => :plain,
        :enable_starttls_auto => true
      }
    }

    Pony.mail({
      :to => 'ricky@onehouse.net',
      from: params[:email],
      :subject => "art inquiry from #{name}",
      :body => params[:email],
    })
    redirect 'contact.html'
  end
end

