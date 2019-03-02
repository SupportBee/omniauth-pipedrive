module OmniAuth
  module Pipedrive
    class << self
      private

      def read_version
        File.read(File.join(File.dirname(__FILE__), "..", "..", "VERSION"))
      end
    end

    VERSION = read_version
  end
end
