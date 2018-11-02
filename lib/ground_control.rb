class GroundControl
  require 'httparty'

  def initialize(opts = {})
    @data = HTTParty.get(ENV["BASE_URL"],
                 :headers => { "Authorization" => ENV["GC_AUTHORIZATION"]})
  end

  def parsed_response
    @data.parsed_response
  end
end
