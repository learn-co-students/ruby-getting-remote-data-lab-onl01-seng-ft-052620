require 'open-uri'
require 'net/http'
require 'json'
# require 'pry'

class GetRequester

    attr_accessor :url
    
    #initializes with a url
    def initialize(url)
        @url = url
    end

    # sends a Get request to the URL and return the body of the response
    def get_response_body
        uri = URI.parse(@url)
        reponse = Net::HTTP.get_response(uri)
        reponse.body
    end

    # take reponse body and return an Array or Hash of data
    def parse_json
        JSON.parse(self.get_response_body)
    end
    
end

# binding.pry