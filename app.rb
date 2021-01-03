require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    # binding.pry
    # user_text = params[:user_phrase]
    x = PigLatinizer.new
    @latinized_word = x.piglatinize(params[:user_phrase])
    
    erb :new_string
  end
  
  
end