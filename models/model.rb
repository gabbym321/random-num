
 
require 'net/http'
require 'json'


def get_fav_num(fav_num) 
    uri = URI("http://numbersapi.com/#{fav_num}/math") #link to the api url. Used string interplatation so that it would work for any number you put in. same for lines 17 & 27
num_fact = Net::HTTP.get(uri) #gets url same for line 18 & 28
 num_fact #return the info got same for line 19 & 29
end 




def get_date(date)
    uri = URI("http://numbersapi.com/#{date}/date")
 date_fact= Net::HTTP.get(uri)
    date_fact
end 





def get_year(year)
    uri = URI("http://numbersapi.com/#{year}/year")
year_fact = Net::HTTP.get(uri)
 year_fact
end 


