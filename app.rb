require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do 
       text = params[:user_phrase]

       pig = PigLatinizer.new()

       @pig_latin = pig.piglatinize(text)

       erb :results
    end
end