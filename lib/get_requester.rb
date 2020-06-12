# Write your code here
require 'net/http'
require 'open-uri'
require 'json'


class GetRequester

    attr_accessor :url 
    
    def initialize(url)
        @url = url  
    end



    def get_response_body
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
    end
    def parse_json
        response = JSON.parse(self.get_response_body)
               
    end

end



 
# class GetContent
#  #turn URL into user input for app using gets.chomp
#  #api from https://scripture.api.bible/admin/applications/1409620147298?service_id=2555417731121
#  #api.bible key: 9e4fd5acc476c7d47186600cf22e5498
#   URL = "curl --request GET \\\n--url https://api.scripture.api.bible/v1/bibles \\\n--header 'api-key: 9e4fd5acc476c7d47186600cf22e5498'"
 
#   def get_response_body
#     uri = URI.parse(URL)
#     response = Net::HTTP.get_response(uri)
#     response.body
#   end
# #   def parse_json
# #     content = JSON.parse(self.get_response_body)
# #     content.collect do |program| program[""]
# #     end

# #   end

# end
 
# # content = GetContent.new
# # puts content.parse_json.uniq
# content = GetContent.new.get_response_body
#  puts content 