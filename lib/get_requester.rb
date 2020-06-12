require 'net/http'
require 'json'
require 'open-uri'
require 'pry'

class GetRequester

    attr_accessor :url

    def initialize(url)
        @url = url
    end


    def get_response_body
        #sends the GET request to the URL passed on init. should return the BODY of the response
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body

    end


    def parse_json
        #use get_response_body request, return a ruby array or hash made up of data converted from response of request
        programs = JSON.parse(self.get_response_body)
        binding.pry
        programs

    end


end