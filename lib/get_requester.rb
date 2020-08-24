require 'pry'
require 'json' 
require 'net/http'
require 'open-uri'

class GetRequester

  def initialize(link)
    x = URI.parse(link)
    @response = Net::HTTP.get_response(x)
  end 

  def get_response_body 
    @response.body
  end 

  def parse_json
    JSON.parse(@response.body)
  end 
end 