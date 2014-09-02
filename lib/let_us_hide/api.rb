module LetUsHide
  class API

    def self.current_conditions(location)
      request_url = "#{base_url}conditions/q/#{location}.json"
      JSON.parse( open(request_url).read )['current_observation']
    end

    def self.forecast(location)
      request_url = "#{base_url}forecast/q/#{location}.json"
      JSON.parse( open(request_url).read )['forecast']
    end

    private

    def self.base_url
      raise 'API key has not been set.' if Configuration.api_key.nil?

      "http://api.wunderground.com/api/#{Configuration.api_key}/"
    end

  end
end