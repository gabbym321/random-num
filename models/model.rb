#http://numbersapi.com/17/math
 
require 'net/http'
require 'json'
#require 'pp'

#uri = URI('http://numbersapi.com/13/math')
#response = Net::HTTP.get(uri)
#puts response

#octocat.keys
# ["login", "id", "avatar_url", "gravatar_id", "url", "html_url", "followers_url", "following_url", "gists_url", "starred_url", "subscriptions_url", "organizations_url", "repos_url", "events_url", "received_events_url", "type", "name", "company", "blog", "location", "email", "hireable", "bio", "public_repos", "followers", "following", "created_at", "updated_at", "public_gists"]

#def get_fav_num(fav_num)
    #uri = URI('http://numbersapi.com/13/math')
#fav_num = Net::HTTP.get(uri)
#puts fav_num
#end
##puts get_fav_num("14")


def get_fav_num(fav_num)
    uri = URI("http://numbersapi.com/#{fav_num}/math")
num_fact = Net::HTTP.get(uri)
 num_fact
end 
#fav_num= gets.chomp
#puts get_fav_num(fav_num)



def get_date(date)
    uri = URI("http://numbersapi.com/#{date}/date")
 date_fact= Net::HTTP.get(uri)
    date_fact
end 
#date= gets.chomp
#puts get_date("08/22")




def get_year(year)
    uri = URI("http://numbersapi.com/#{year}/year")
year_fact = Net::HTTP.get(uri)
 year_fact
end 
#year= gets.chomp
#puts get_year("2000")

