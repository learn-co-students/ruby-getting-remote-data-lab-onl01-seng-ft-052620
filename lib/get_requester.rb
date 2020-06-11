require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
	attr_reader :url

	def initialize(url)
		@url = url
	end

	def get_response_body
	 #sends a GET request to the URL passed in on initialization. This method should return 
	 #the _body_ of the response.
	 	
	 	uri = URI.parse(url)
	 	uri.open.string

	 	#alternatively:
	 	# Net::HTTP.get_response(uri).body
	end

	def parse_json
		#use `get_response_body` to send a request, then return a Ruby Array or Hash made up
		#of data converted from the response of that request.

		JSON.parse(self.get_response_body)
	end
end