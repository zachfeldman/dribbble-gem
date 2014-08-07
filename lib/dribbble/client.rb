require 'net/http'
require 'json'

require_relative 'shot'
require_relative 'player'

module Dribbble

  class Client

    def initialize
      @uri = URI("http://api.dribbble.com/")
      @shot_options = ["debuts", "everyone", "popular"]
    end

    def make_request(endpoint)
      response = Net::HTTP.get(@uri + endpoint)
      JSON.parse(response)
    end
  
    include Shot
    include Player

  end

end
