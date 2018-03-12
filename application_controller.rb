require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/result' do
    #puts params 
    fav_num= params[:fav_num]
    @num= get_fav_num(fav_num)
    date= params[:date]
    @date= get_date(date)
    year= params[:year]
   @year=  get_year(year)
   erb :result 
  end 

end
