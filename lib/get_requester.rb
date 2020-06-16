require 'pry'
require 'net/http'
require 'open-uri'

class GetRequester 
    attr_accessor :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
        # binding.pry
    end

    def parse_json
        parsed = JSON.parse(self.get_response_body)
        parsed
    end
end