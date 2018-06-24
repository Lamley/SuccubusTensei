require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  # File.read(File.join('emuera', 'index.html'))
  html :index
end

def html(view)
  File.read(File.join('emuera', "#{view.to_s}.html"))
end