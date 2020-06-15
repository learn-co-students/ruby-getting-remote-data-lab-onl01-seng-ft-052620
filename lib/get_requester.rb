# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester
    # initialize with a string URL

    def initialize(url)
        @url = url
    end
    
    def get_response_body
        # sends a GET request to the URL passed on initialization.
        # return the body of the response
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        # use get_response_body to send requrest
        # return ruby array or hash made up of data converted from response
        programs = JSON.parse(self.get_response_body)
        # programs.collect do |program|
        #     program["name"]
        # binding.pry
        # end
    end

end
