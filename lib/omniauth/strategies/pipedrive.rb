require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Pipedrive < OmniAuth::Strategies::OAuth2
      include OmniAuth::Strategy
    end
  end
end
