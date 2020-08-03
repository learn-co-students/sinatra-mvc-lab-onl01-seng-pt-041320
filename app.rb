require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do
    words = PigLatinizer.new
   @string = words.piglatinize(params[:user_phrase])  
    erb :final_pig_latin
  end

end