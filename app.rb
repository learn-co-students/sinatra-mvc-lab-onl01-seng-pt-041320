require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        #"Make sure thid thing works!"
        erb :user_input
    end

    post '/piglatinize' do
        puts params
        @user_phrase = PigLatinizer.new.piglatinize(params[:user_phrase])
        erb :piglatinize
    end
end