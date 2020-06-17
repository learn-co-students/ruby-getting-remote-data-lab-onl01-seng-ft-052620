require 'net/http'
require 'open-uri'
require 'json'


# Write your code here
class GetRequester

    
    def initialize(response)
        @url = response
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        
        JSON.parse(get_response_body)

    end
    # URL = "http://data.cityofnewyork.us/resource/uvks-tn5n.json"

    # def get_programs
    #     uri = URI.parse(URL)
    #     response = Net::HTTP.get_response(uri)
    #     response.body
    # end

    # def program_school
    #     # we use the JSON library to parse the API response into nicely formatted JSON
    #       programs = JSON.parse(self.get_programs)
    #       programs.collect do |program|
    #         program["agency"]  
    #     end
    # end


end