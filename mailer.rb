require 'sinatra'
require 'pony'

puts 'supmotherfucker'
post '/contact' do
  Pony.mail(:to => 'rickyahn0612@yahoo.com', :from => "someone@onehouse.net", :subject => "art inquiry from #{name}", :body => "Sup")

  haml :contact
end

