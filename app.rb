require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @times = params[:number].to_i
    @times.times {puts "#{params[:phrase]}"}
    # params[:number].to_i.times do
    #   puts params[:phrase]
    # end
  end

end
