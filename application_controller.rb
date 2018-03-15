require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do #this gets the route from the index (the forms)
    erb :index
  end
  post '/result' do #This says put the route we got from index and post it in the results page. 
    
    fav_num= params[:fav_num] #puts out the data we got from the fav_num form (same for line 16 & 18 with different info)
    @num= get_fav_num(fav_num)
    date= params[:date]
    @date= get_date(date)
    year= params[:year]
   @year=  get_year(year)
   erb :result 
  end 

end
