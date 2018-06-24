require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  # File.read(File.join('SuccubusTensei', 'index.html'))
  html :index
end

def html(view)
  File.read(File.join('SuccubusTensei', "#{view.to_s}.html"))
end