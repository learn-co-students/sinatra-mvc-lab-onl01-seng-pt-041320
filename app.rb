require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
       sentence = params[:user_phrase]
       text = PigLatinizer.new
       @pig_latinized_sentence = text.piglatinize(sentence)
        
       erb :results
    end
end