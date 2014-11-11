# encoding: UTF-8

require 'saddle/endpoint'

module LinkedIn
  module Endpoints

    class V1 < Saddle::TraversalEndpoint

      def get_profile(id, opts = {})
        get_with_format("people/id=#{id}", {}, opts)
      end

      def get_info_by_fields(fields = LinkedIn::Client.option_fields, opts = {})
        get_with_format("people/~:(#{fields.join(',')})", {}, opts)
      end

      private

      def get_with_format(url, params={}, options={})
        get(url, params.merge({:format => LinkedIn::Client.request_style}), options)
      end
    end

  end
end
