require "net/http"
require "open-uri"
require "json" #required to convert the response.body JSON into a Ruby Hash or Array

class GetRequester

    def initialize(url)
        @url = url
    end

    def get_response_body
        # binding.pry
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        JSON.parse(get_response_body)
    end
end