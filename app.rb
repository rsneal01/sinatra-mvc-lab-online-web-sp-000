require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    binding.pry
    user_text = params[:word]
    @latinized_word = PigLatinizer.new(user_text)
    
    erb :new_string
  end
  
  
end