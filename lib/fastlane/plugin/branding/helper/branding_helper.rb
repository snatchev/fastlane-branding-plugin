module Fastlane
  module Helper
    class BrandingHelper
      # class methods that you define here become available in your action
      # as `Helper::BrandingHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the branding plugin helper!")
      end
    end
  end
end
