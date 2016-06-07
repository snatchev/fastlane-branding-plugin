module Fastlane
  module Actions
    class BrandingAction < Action
      def self.run(params)
        UI.message("The branding plugin is working!")
      end

      def self.description
        "Add some branding to your fastlane output"
      end

      def self.authors
        ["Stefan Natchev"]
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "BRANDING_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
