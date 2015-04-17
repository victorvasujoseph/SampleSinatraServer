require 'sinatra'

# all status codes given are based on W3C standards

get '/' do
  'Here is some data.'
end

get '/TestMyPage' do
        html :pageGetAuthCode
end

def html(view)
  File.read(File.join('public', "#{view.to_s}.html"))
end


