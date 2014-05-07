require 'sinatra'
require 'pony'

puts 'supmotherfucker'

get '/contact' do
    haml :contact
end


post '/contact' do
post '/contact' do
        name = params[:name]
        mail = params[:mail]
        body = params[:body]

        Pony.mail(:to => 'rickyahn0612@yahoo.com', :from => "#{mail}", :subject => "art inquiry from #{name}", :body => "#{body}")

        haml :contact
    end
end

