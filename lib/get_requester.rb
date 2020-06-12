require 'pry'
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  attr_accessor :URL

  def initialize(url)
    @URL = url
  end
  
  def get_response_body
    uri = URI.parse(@URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end 
  
  def parse_json
    data = JSON.parse(self.get_response_body)
    data
  end
  
end