module LetUsHide
  class API
    include Confiture::Configuration
    confiture_allowed_keys(:api_key)
    confiture_defaults(api_key: nil)

    def self.list(options = {})
      JSON.parse( open(request_url(options)).read )
    end

    private

    def self.request_url(options)
      validate_options(options)
      request_url = base_url

      options.each do |key, value|
        value = value.join(',') if value.is_a?(Array)
        request_url = "#{request_url}&#{key}=#{value}"
      end

      return request_url
    end

    def self.validate_options(options)
      options.each do |key, value|
        raise "Unknown query string key - #{key}" unless %w[num as ps cs].include? key.to_s

        value = [value] unless value.is_a? Array

        case key.to_s
          when 'num'
            raise "'num' must be integer greater than 0" if (!value.is_a?(Integer) || value <= 0 )
          when 'as'
            as_values = %w[tp ap dp hap]
            raise "'as' unknown value - #{value}" if (value & as_values).empty?
          when 'ps'
            ps_values = %w[http https socks4 socks5]
            raise "'ps' unknown value - #{value}" if (value & ps_values).empty?
        end
      end
    end

    def self.base_url
      raise 'API key has not been set.' if api_key.nil?
      "http://letushide.com/fpapi/?key=#{api_key}&format=json"
    end

  end
end