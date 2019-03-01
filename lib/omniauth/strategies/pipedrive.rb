require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Pipedrive < OmniAuth::Strategies::OAuth2
      option :client_options, {
        site: 'https://api-proxy.pipedrive.com',
        authorize_url: 'https://oauth.pipedrive.com/oauth/authorize',
        token_url: 'https://oauth.pipedrive.com/oauth/token'
      }

      def request_phase
        super
      end

      def callback_phase
        super
      end

      def callback_url
        options[:redirect_uri] || (full_host + script_name + callback_path)
      end

      uid { raw_info['id'].to_s }

      info do
        {
          name: raw_info['name'],
          email: raw_info['email']
        }
      end

      extra do
        {
          raw_info: raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/users/me").parsed["data"]
      end
    end
  end
end
