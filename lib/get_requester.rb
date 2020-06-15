require 'net/http'
require 'open-uri'
require 'json'


class GetRequester
    attr_accessor :string
    
    URL =  "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
    
    def initialize(string)
      @string = string
    end
    
    def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    programs = JSON.parse(self.get_response_body)
  programs.collect do |program|
   {"name" => program["name"],
    "occupation" => program["occupation"]}
  end
  end
end
