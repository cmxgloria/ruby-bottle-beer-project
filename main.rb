require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require "stock_quote"


get '/' do
  @num = 99
  erb :home

end


get '/:num' do
  @num = params[:num].to_i
  if @num == 0
    puts "No Bottles of beer on the wall"
  end
  erb :home
end





