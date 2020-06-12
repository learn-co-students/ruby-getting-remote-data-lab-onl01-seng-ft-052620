# Write your code here
require 'pry'
require 'json'
require 'net/http'
require 'open-uri'

 

class GetRequester

def initialize(url)
@url = url
end

def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
end

def parse_json

JSON(get_response_body)
end

 
end