require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        words = PigLatinizer.new
        @convered_words = words.piglatinize(params[:user_phrase])

        # @converted_words = PigLatinizer.new(params["user_phrase"])

        erb :results
    end



end