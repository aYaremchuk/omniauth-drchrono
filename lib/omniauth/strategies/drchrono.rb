require "omniauth-drchrono/version"
require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class DrChrono < OmniAuth::Strategies::OAuth2
      include OmniAuth::Strategy
      option :name, "drchrono"
      option :client_options, {
        :site => 'https://drchrono.com/api',
        :authorize_url => 'https://drchrono.com/o/authorize',
        :token_url => 'https://drchrono.com/o/token'
      }

      uid { raw_info['username'] }

      info do
        { :doctor => doctor }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('users/current').parsed
      end

      def doctor
        @doctor ||= access_token.get(raw_info['doctor']).parsed
      end
    end
  end
end

OmniAuth.config.add_camelization 'drchrono', 'DrChrono'
