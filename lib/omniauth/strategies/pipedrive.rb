require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Pipedrive < OmniAuth::Strategies::OAuth2
      option :client_options, {
        site: 'https://oauth.pipedrive.com',
        authorize_url: 'https://oauth.pipedrive.com/oauth/authorize',
        token_url: 'https://oauth.pipedrive.com/oauth/token'
      }

      def request_phase
        super
      end
    end
  end
end
