# encoding: UTF-8

require 'saddle'
require 'saddle/middleware/authentication/oauth2'

require 'linkedin-client/stub'
require 'linkedin-client/version'


module LinkedIn

  class Client < Saddle::Client
    extend LinkedIn::Stub

    def initialize args
        args.each do |k,v|
          instance_variable_set("@#{k}", v) unless v.nil?
        end
    end

    def self.host
      @host || 'api.linkedin.com'
    end

    def self.path_prefix
      @path_prefix || ''
    end

    def self.use_ssl
      @use_ssl || true
    end

    def self.num_retries
      @num_retries || 1
    end

    def self.timeout
      # seconds
      @timeout || 5
    end

    def self.request_style
      @request_style || :json 
    end

    def self.option_fields
      @option_fields = ['id', 'email-address', 'first-name', 'last-name', 'num-connections', 'positions', 'three-current-positions', 'three-past-positions', 'educations']
    end 

    add_middleware({
      :klass => Saddle::Middleware::Authentication::OAuth2,
      :args => ['oauth2_access_token'],
    })

  end

end
