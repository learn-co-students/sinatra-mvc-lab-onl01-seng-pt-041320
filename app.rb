require_relative 'config/environment'


class App < Sinatra::Base
    get '/' do
        erb :user_input 
    end

    post '/piglatinize' do 
        @input = params[:user_phrase]
        @piglatin = PigLatinizer.new
        erb :results
      end 

end