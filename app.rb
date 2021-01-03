require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/' do
    user_text = params[:word]
    @latinized_word = PigLatinizer.new(user_text)
    
    erb :new_string
  end
  
  
end